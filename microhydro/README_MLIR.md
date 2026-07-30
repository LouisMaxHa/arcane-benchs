# jsonMLIR

Ce projet à pour but de tester une nouvelle pipeline de compilation utilisant MLIR.

## Installation
<details>
<summary>Installation d'Arcanne</summary>

Instruction pour installer Arcane en utilisant spack:
```bash
# Spack : https://spack.io/
git clone --depth=2 https://github.com/spack/spack.git
. spack/share/spack/setup-env.sh

# Arcane
git clone https://github.com/arcaneframework/spack_recipes.git
cd spack_recipes
git checkout dev/gg-update-for-spack-1.0

# Add to Spack
spack repo add spack_recipes
spack env create arcane
spacktivate arcane
spack add arcane-framework +arcane build_type=Debug %clang

# Install
spack install
```

</details>
<details>
<summary>Installation de jsonMLIR</summary>

Suivez les instructions du repo [jsonMLIR](https://github.com/LouisMaxHa/jsonMLIR)

</details>

```bash
# Cloner le projet
git clone git@github.com:LouisMaxHa/arcane-benchs.git --branch view-struct-example
mkdir arcane-benchs/microhydro/
cd arcane-benchs/microhydro/

# Construire la librairie MLIR
jsonmlir src/librairie.py -aC  
cat build/librairie.mlir

# Build
make -C build
./build/MicroHydro -A,MaxIteration=2 data/MicroHydro.1.1.arc
```

## Usage

Vous pouvez ensuite vérifier dans `MicroHydroModule.cc` quelle version est utilisée:

```cpp
/*!
 * \brief Calcul du volume des mailles, des longueurs caractéristiques
 * et des résultantes aux sommets.
 */
void MicroHydroModule::computeGeometricValues() {
  if(true){
    MicroHydroModule::computeGeometricValuesMLIR();
  } else {
    MicroHydroModule::computeGeometricValuesCPP();
  }
}
```

Vous pouvez commencer par choisir la version cpp pour enregistrer le résultat de référence:

```bash
mkdir comparaisons
STDENV_VERIF=WRITE STDENV_VERIF_PATH=comparaisons/ build/MicroHydro -A,MaxIteration=2 data/MicroHydro.1.1.arc
```

Puis modifier `MicroHydroModule.cc` pour prendre la version MLIR,
```
make
STDENV_VERIF=READ STDENV_VERIF_DIFF_METHOD=RELATIVE STDENV_VERIF_PATH=comparaisons/ build/MicroHydro -A,MaxIteration=2 data/MicroHydro.1.1.arc
```