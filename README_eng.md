# What's this?
This repository has sample files for ReaxFF simulation in LAMMPS software.
Using this repository, you can simulate the following systems.

- [Water(1000 molecules)](https://github.com/sotanengel/LAMMPS_ReaxFF_example/tree/main/water_cell)
- [Ethanol(1000 molecules)](https://github.com/sotanengel/LAMMPS_ReaxFF_example/tree/main/ethanol_cell)
- [Water/Ethanol (Water 1000molecules + Ethanol 1molecule)](https://github.com/sotanengel/LAMMPS_ReaxFF_example/tree/main/water_with_ethanol)


Water Cell             |  Ethanol Cell
:-------------------------:|:-------------------------:
![image](https://user-images.githubusercontent.com/84895123/127760451-0f464b24-b200-4808-82eb-ce29e55561a9.png)  |  ![image](https://user-images.githubusercontent.com/84895123/127760458-292ab97e-0038-4478-9efe-4abdc369ea81.png)

I used following ReaxFF potential.
- [Improvement of the ReaxFF Description for Functionalized Hydrocarbon/Water Weak Interactions in the Condensed Phase](https://pubs.acs.org/doi/pdf/10.1021/acs.jpcb.8b01127)

# How to work?
## 1.Download LAMMPS
Download LAMMPS from the official [LAMMPS page](https://www.lammps.org/).
The version I used is "LAMMPS Stable Release:29 Oct 2020".

## 2.Compile the LAMMPS package
Please refer to [this site](https://polymer-simulation-beginners.hatenablog.com/entry/2019/12/31/223235) for details.
The packages I installed are as follows.
- CLASS2
- MOLECULE
- QEQ
- USER-REAXC

Move the compiled software(lmp_serial or lmp_mpi) to a folder which the environment variables have been passed.

## 3.Run simulation
Run `job.sh` in the folder of the system you want to simulate.
Please make sure that `lmp_serial` can be executed, because these simulations assume single-core execution.
If you want to run parallel calculations, fix `job.sh`.
