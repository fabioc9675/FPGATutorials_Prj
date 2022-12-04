setenv SIM_WORKING_FOLDER .
set newDesign 0
if {![file exists "D:/ASUS/Documents/Google Drive - udea.edu.co/Fabian_Documentos/Proyectos/TutorialesFPGA/LED_Lights/LED_Test/LED_Test.adf"]} { 
	design create LED_Test "D:/ASUS/Documents/Google Drive - udea.edu.co/Fabian_Documentos/Proyectos/TutorialesFPGA/LED_Lights"
  set newDesign 1
}
design open "D:/ASUS/Documents/Google Drive - udea.edu.co/Fabian_Documentos/Proyectos/TutorialesFPGA/LED_Lights/LED_Test"
cd "D:/ASUS/Documents/Google Drive - udea.edu.co/Fabian_Documentos/Proyectos/TutorialesFPGA/LED_Lights"
designverincludedir -clear
designverlibrarysim -PL -clear
designverlibrarysim -L -clear
designverlibrarysim -PL pmi_work
designverlibrarysim ovi_machxo2
designverdefinemacro -clear
if {$newDesign == 0} { 
  removefile -Y -D *
}
addfile "D:/ASUS/Documents/Google Drive - udea.edu.co/Fabian_Documentos/Proyectos/TutorialesFPGA/LED_Lights/LED_Test/LEDLight.v"
addfile "D:/ASUS/Documents/Google Drive - udea.edu.co/Fabian_Documentos/Proyectos/TutorialesFPGA/LED_Lights/LED_Test/LED_Test.v"
vlib "D:/ASUS/Documents/Google Drive - udea.edu.co/Fabian_Documentos/Proyectos/TutorialesFPGA/LED_Lights/LED_Test/work"
set worklib work
adel -all
vlog -dbg -work work "D:/ASUS/Documents/Google Drive - udea.edu.co/Fabian_Documentos/Proyectos/TutorialesFPGA/LED_Lights/LED_Test/LEDLight.v"
vlog -dbg -work work "D:/ASUS/Documents/Google Drive - udea.edu.co/Fabian_Documentos/Proyectos/TutorialesFPGA/LED_Lights/LED_Test/LED_Test.v"
module testLed
vsim  +access +r testLed   -PL pmi_work -L ovi_machxo2
add wave *
run 1000ns
