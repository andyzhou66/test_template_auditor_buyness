insheet using "C:\Users\Yu Zhou\Desktop\US audit firms.csv", comma names 
* identify the legal forms of audit firms registered in PCAOB
gen poLLP=index( firm,"LLP")
gen poLLP2=index(firm,"L.L.P.")
gen poLLP3=index(firm,"RLLP.")

gen sum= poLLP+ poLLP2+ poLLP3
gen LLP=(sum>0)
gen poLLC=index( firm,"LLC")
gen poLLC2=index(firm,"L.L.C.")
gen poLLC3=index(firm,"LC")
gen poLLC4=index(firm,"Ltd")
gen sum2= poLLC2+ poLLC+ poLLC3+ poLLC4
gen  LLC=(sum2>0)
gen poPSC=index(firm,"PSC")
gen poPC=index(firm,"PC")
gen poPC2=index(firm,"P.C.")
gen poAPC=index(firm,"APC")
gen poPA=index(firm, "P.A.")
gen poPA1=index(firm,"PA")
gen sum3= poPSC+ poPC+ poAPC /* not included the PA which is not knowed */
gen PC=(sum3>0)
gen poInc=index(firm,"Inc.")
gen Inc=(poInc>0)

gen last3char=substr(firm,-3,3)

gen genPart=(last3char=="Co." |   last3char=="CO." | last3char=="Co,")
