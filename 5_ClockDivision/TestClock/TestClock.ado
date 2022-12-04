setenv SIM_WORKING_FOLDER .
set newDesign 0
if {![file exists "D:/ASUS/Documents/Google Drive - udea.edu.co/Fabian_Documentos/Proyectos/TutorialesFPGA/5_ClockDivision/TestClock/TestClock.adf"]} { 
	design create TestClock "D:/ASUS/Documents/Google Drive - udea.edu.co/Fabian_Documentos/Proyectos/TutorialesFPGA/5_ClockDivision"
  set newDesign 1
}
design open "D:/ASUS/Documents/Google Drive - udea.edu.co/Fabian_Documentos/Proyectos/TutorialesFPGA/5_ClockDivision/TestClock"
cd "D:/ASUS/Documents/Google Drive - udea.edu.co/Fabian_Documentos/Proyectos/TutorialesFPGA/5_ClockDivision"
designverincludedir -clear
designverlibrarysim -PL -clear
designverlibrarysim -L -clear
designverlibrarysim -PL pmi_work
designverlibrarysim ovi_machxo2
designverdefinemacro -clear
if {$newDesign == 0} { 
  removefile -Y -D *
}
addfile "D:/ASUS/Documents/Google Drive - udea.edu.co/Fabian_Documentos/Proyectos/TutorialesFPGA/5_ClockDivision/TestClock/ClockDivisionSrc.v"
addfile "D:/ASUS/Documents/Google Drive - udea.edu.co/Fabian_Documentos/Proyectos/TutorialesFPGA/5_ClockDivision/TestClock/testClock.v"
vlib "D:/ASUS/Documents/Google Drive - udea.edu.co/Fabian_Documentos/Proyectos/TutorialesFPGA/5_ClockDivision/TestClock/work"
set worklib work
adel -all
vlog -dbg -work work "D:/ASUS/Documents/Google Drive - udea.edu.co/Fabian_Documentos/Proyectos/TutorialesFPGA/5_ClockDivision/TestClock/ClockDivisionSrc.v"
vlog -dbg -work work "D:/ASUS/Documents/Google Drive - udea.edu.co/Fabian_Documentos/Proyectos/TutorialesFPGA/5_ClockDivision/TestClock/testClock.v"
module divide_tb
vsim  +access +r divide_tb   -PL pmi_work -L ovi_machxo2
add wave *
run 1000ns
