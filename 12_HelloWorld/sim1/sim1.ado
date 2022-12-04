setenv SIM_WORKING_FOLDER .
set newDesign 0
if {![file exists "D:/ASUS/Documents/Google Drive - udea.edu.co/Fabian_Documentos/Proyectos/TutorialesFPGA/HelloWorld/sim1/sim1.adf"]} { 
	design create sim1 "D:/ASUS/Documents/Google Drive - udea.edu.co/Fabian_Documentos/Proyectos/TutorialesFPGA/HelloWorld"
  set newDesign 1
}
design open "D:/ASUS/Documents/Google Drive - udea.edu.co/Fabian_Documentos/Proyectos/TutorialesFPGA/HelloWorld/sim1"
cd "D:/ASUS/Documents/Google Drive - udea.edu.co/Fabian_Documentos/Proyectos/TutorialesFPGA/HelloWorld"
designverincludedir -clear
designverlibrarysim -PL -clear
designverlibrarysim -L -clear
designverlibrarysim -PL pmi_work
designverlibrarysim ovi_machxo2
designverdefinemacro -clear
if {$newDesign == 0} { 
  removefile -Y -D *
}
addfile "D:/ASUS/Documents/Google Drive - udea.edu.co/Fabian_Documentos/Proyectos/TutorialesFPGA/HelloWorld/top.v"
addfile "D:/ASUS/Documents/Google Drive - udea.edu.co/Fabian_Documentos/Proyectos/TutorialesFPGA/HelloWorld/testbench.v"
vlib "D:/ASUS/Documents/Google Drive - udea.edu.co/Fabian_Documentos/Proyectos/TutorialesFPGA/HelloWorld/sim1/work"
set worklib work
adel -all
vlog -dbg -work work "D:/ASUS/Documents/Google Drive - udea.edu.co/Fabian_Documentos/Proyectos/TutorialesFPGA/HelloWorld/top.v"
vlog -dbg -work work "D:/ASUS/Documents/Google Drive - udea.edu.co/Fabian_Documentos/Proyectos/TutorialesFPGA/HelloWorld/testbench.v"
module testbench
vsim  +access +r testbench   -PL pmi_work -L ovi_machxo2
add wave *
run 1000ns
