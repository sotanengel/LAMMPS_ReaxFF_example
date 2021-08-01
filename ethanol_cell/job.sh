#one ethanol molecule simulation
cd 1_mole
    lmp_serial < IN #lammps simulate
cd ..

cp 1_mole/CONFIG_1.RESTART 2_moles/ #copy CONFIG restart file

#1000 ethanol molecules NVT simulation
cd 2_moles
    lmp_serial < IN #lammps simulate
cd ..

cp 2_moles/CONFIG_2.RESTART 3_npt-relax/ #copy CONFIG restart file

#NPT simulation-1
cd 3_npt-relax
    lmp_serial < IN #lammps simulate
cd ..

cp 3_npt-relax/CONFIG_3.RESTART 4_npt-relax/ #copy CONFIG restart file

#NPT simulation-2
cd 4_npt-relax
    lmp_serial < IN #lammps simulate
cd ..

cp 4_npt-relax/CONFIG_4.RESTART 5_npt-relax/ #copy CONFIG restart file

#NPT simulation-3
cd 5_npt-relax
    lmp_serial < IN #lammps simulate
cd ..

cp 5_npt-relax/CONFIG_5.RESTART 6_MSD/ #copy CONFIG restart file

#MSD simulation
cd 6_MSD
    lmp_serial < IN #lammps simulate
cd ..

