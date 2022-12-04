setenv SIM_WORKING_FOLDER .
set newDesign 0
if {![file exists "D:/ASUS/Documents/Google Drive - udea.edu.co/Fabian_Documentos/Proyectos/TutorialesFPGA/UseOfFPGA/LED_Test/LED_Test.adf"]} { 
	design create LED_Test "D:/ASUS/Documents/Google Drive - udea.edu.co/Fabian_Documentos/Proyectos/TutorialesFPGA/UseOfFPGA"
  set newDesign 1
}
design open "D:/ASUS/Documents/Google Drive - udea.edu.co/Fabian_Documentos/Proyectos/TutorialesFPGA/UseOfFPGA/LED_Test"
cd "D:/ASUS/Documents/Google Drive - udea.edu.co/Fabian_Documentos/Proyectos/TutorialesFPGA/UseOfFPGA"
designverincludedir -clear
designverlibrarysim -PL -clear
designverlibrarysim -L -clear
designverlibrarysim -PL pmi_work
designverlibrarysim ovi_machxo2
designverdefinemacro -clear
if {$newDesign == 0} { 
  removefile -Y -D *
}
addfile "D:/ASUS/Documents/Google Drive - udea.edu.co/Fabian_Documentos/Proyectos/TutorialesFPGA/UseOfFPGA/LED_Test/CodeSrc.v"
addfile "D:/ASUS/Documents/Google Drive - udea.edu.co/Fabian_Documentos/Proyectos/TutorialesFPGA/UseOfFPGA/LED_Test/LedTest.v"
vlib "D:/ASUS/Documents/Google Drive - udea.edu.co/Fabian_Documentos/Proyectos/TutorialesFPGA/UseOfFPGA/LED_Test/work"
set worklib work
adel -all
vlog -dbg -work work "D:/ASUS/Documents/Google Drive - udea.edu.co/Fabian_Documentos/Proyectos/TutorialesFPGA/UseOfFPGA/LED_Test/CodeSrc.v"
vlog -dbg -work work "D:/ASUS/Documents/Google Drive - udea.edu.co/Fabian_Documentos/Proyectos/TutorialesFPGA/UseOfFPGA/LED_Test/LedTest.v"
module LED_test
vsim  +access +r LED_test   -PL pmi_work -L ovi_machxo2
add wave *
run 1000ns
