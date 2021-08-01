#one ethanol molecule simulation
cd 1_anylying
    lmp_serial < IN #lammps simulate
cd ..

cp 1_anylying/CONFIG_1.RESTART 2_npt-relax/ #copy CONFIG restart file

#1000 ethanol molecules NVT simulation
cd 2_npt-relax
    lmp_serial < IN #lammps simulate
cd ..

cp 2_npt-relax/CONFIG_2.RESTART 3_npt-relax/ #copy CONFIG restart file

#NPT simulation-1
cd 3_npt-relax
    lmp_serial < IN #lammps simulate
cd ..

cp 3_npt-relax/CONFIG_3.RESTART 4_cellrelax/ #copy CONFIG restart file

#NPT simulation-2
cd 4_cellrelax
    lmp_serial < IN #lammps simulate
cd ..

cp 4_cellrelax/CONFIG_4.RESTART 5_MSD/ #copy CONFIG restart file

#MSD simulation
cd 5_MSD
    lmp_serial < IN #lammps simulate
cd ..

