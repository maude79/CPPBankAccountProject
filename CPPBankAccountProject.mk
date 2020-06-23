##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=CPPBankAccountProject
ConfigurationName      :=Debug
WorkspacePath          :=/Users/Maude/Documents/MiscCPPProjects
ProjectPath            :=/Users/Maude/Documents/MiscCPPProjects/CPPBankAccountProject
IntermediateDirectory  :=./Debug
OutDir                 := $(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=Maude Burkhalter
Date                   :=23/06/2020
CodeLitePath           :="/Users/Maude/Library/Application Support/codelite"
LinkerName             :=/usr/bin/g++
SharedObjectLinkerName :=/usr/bin/g++ -dynamiclib -fPIC
ObjectSuffix           :=.o
DependSuffix           :=.o.d
PreprocessSuffix       :=.i
DebugSwitch            :=-g 
IncludeSwitch          :=-I
LibrarySwitch          :=-l
OutputSwitch           :=-o 
LibraryPathSwitch      :=-L
PreprocessorSwitch     :=-D
SourceSwitch           :=-c 
OutputFile             :=$(IntermediateDirectory)/$(ProjectName)
Preprocessors          :=
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E
ObjectsFileList        :="CPPBankAccountProject.txt"
PCHCompileFlags        :=
MakeDirCommand         :=mkdir -p
LinkOptions            :=  
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch). 
IncludePCH             := 
RcIncludePath          := 
Libs                   := 
ArLibs                 :=  
LibPath                := $(LibraryPathSwitch). 

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overriden using an environment variables
##
AR       := /usr/bin/ar rcu
CXX      := /usr/bin/g++
CC       := /usr/bin/gcc
CXXFLAGS :=  -g -O0 -std=c++14 $(Preprocessors)
CFLAGS   :=  -g -O0 -Wall $(Preprocessors)
ASFLAGS  := 
AS       := /usr/bin/as


##
## User defined environment variables
##
CodeLiteDir:=/private/var/folders/sp/1vf72x0n7_n33mck8dvgs59m0000gn/T/AppTranslocation/6F89A2E2-A7B7-4DE3-8BEE-B8EB56039780/d/codelite 2.app/Contents/SharedSupport/
Objects0=$(IntermediateDirectory)/main.cpp$(ObjectSuffix) $(IntermediateDirectory)/Account.cpp$(ObjectSuffix) $(IntermediateDirectory)/AccountsUtil.cpp$(ObjectSuffix) $(IntermediateDirectory)/CheckingAccount.cpp$(ObjectSuffix) $(IntermediateDirectory)/InvalidAccount.cpp$(ObjectSuffix) $(IntermediateDirectory)/IPrintable.cpp$(ObjectSuffix) $(IntermediateDirectory)/SavingsAccount.cpp$(ObjectSuffix) 



Objects=$(Objects0) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild MakeIntermediateDirs
all: $(OutputFile)

$(OutputFile): $(IntermediateDirectory)/.d $(Objects) 
	@$(MakeDirCommand) $(@D)
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects0)  > $(ObjectsFileList)
	$(LinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)

MakeIntermediateDirs:
	@test -d ./Debug || $(MakeDirCommand) ./Debug


$(IntermediateDirectory)/.d:
	@test -d ./Debug || $(MakeDirCommand) ./Debug

PreBuild:


##
## Objects
##
$(IntermediateDirectory)/main.cpp$(ObjectSuffix): main.cpp $(IntermediateDirectory)/main.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/Users/Maude/Documents/MiscCPPProjects/CPPBankAccountProject/main.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/main.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/main.cpp$(DependSuffix): main.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/main.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/main.cpp$(DependSuffix) -MM main.cpp

$(IntermediateDirectory)/main.cpp$(PreprocessSuffix): main.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/main.cpp$(PreprocessSuffix) main.cpp

$(IntermediateDirectory)/Account.cpp$(ObjectSuffix): Account.cpp $(IntermediateDirectory)/Account.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/Users/Maude/Documents/MiscCPPProjects/CPPBankAccountProject/Account.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Account.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Account.cpp$(DependSuffix): Account.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Account.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/Account.cpp$(DependSuffix) -MM Account.cpp

$(IntermediateDirectory)/Account.cpp$(PreprocessSuffix): Account.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Account.cpp$(PreprocessSuffix) Account.cpp

$(IntermediateDirectory)/AccountsUtil.cpp$(ObjectSuffix): AccountsUtil.cpp $(IntermediateDirectory)/AccountsUtil.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/Users/Maude/Documents/MiscCPPProjects/CPPBankAccountProject/AccountsUtil.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/AccountsUtil.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/AccountsUtil.cpp$(DependSuffix): AccountsUtil.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/AccountsUtil.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/AccountsUtil.cpp$(DependSuffix) -MM AccountsUtil.cpp

$(IntermediateDirectory)/AccountsUtil.cpp$(PreprocessSuffix): AccountsUtil.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/AccountsUtil.cpp$(PreprocessSuffix) AccountsUtil.cpp

$(IntermediateDirectory)/CheckingAccount.cpp$(ObjectSuffix): CheckingAccount.cpp $(IntermediateDirectory)/CheckingAccount.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/Users/Maude/Documents/MiscCPPProjects/CPPBankAccountProject/CheckingAccount.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/CheckingAccount.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/CheckingAccount.cpp$(DependSuffix): CheckingAccount.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/CheckingAccount.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/CheckingAccount.cpp$(DependSuffix) -MM CheckingAccount.cpp

$(IntermediateDirectory)/CheckingAccount.cpp$(PreprocessSuffix): CheckingAccount.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/CheckingAccount.cpp$(PreprocessSuffix) CheckingAccount.cpp

$(IntermediateDirectory)/InvalidAccount.cpp$(ObjectSuffix): InvalidAccount.cpp $(IntermediateDirectory)/InvalidAccount.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/Users/Maude/Documents/MiscCPPProjects/CPPBankAccountProject/InvalidAccount.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/InvalidAccount.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/InvalidAccount.cpp$(DependSuffix): InvalidAccount.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/InvalidAccount.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/InvalidAccount.cpp$(DependSuffix) -MM InvalidAccount.cpp

$(IntermediateDirectory)/InvalidAccount.cpp$(PreprocessSuffix): InvalidAccount.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/InvalidAccount.cpp$(PreprocessSuffix) InvalidAccount.cpp

$(IntermediateDirectory)/IPrintable.cpp$(ObjectSuffix): IPrintable.cpp $(IntermediateDirectory)/IPrintable.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/Users/Maude/Documents/MiscCPPProjects/CPPBankAccountProject/IPrintable.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/IPrintable.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/IPrintable.cpp$(DependSuffix): IPrintable.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/IPrintable.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/IPrintable.cpp$(DependSuffix) -MM IPrintable.cpp

$(IntermediateDirectory)/IPrintable.cpp$(PreprocessSuffix): IPrintable.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/IPrintable.cpp$(PreprocessSuffix) IPrintable.cpp

$(IntermediateDirectory)/SavingsAccount.cpp$(ObjectSuffix): SavingsAccount.cpp $(IntermediateDirectory)/SavingsAccount.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/Users/Maude/Documents/MiscCPPProjects/CPPBankAccountProject/SavingsAccount.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/SavingsAccount.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/SavingsAccount.cpp$(DependSuffix): SavingsAccount.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/SavingsAccount.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/SavingsAccount.cpp$(DependSuffix) -MM SavingsAccount.cpp

$(IntermediateDirectory)/SavingsAccount.cpp$(PreprocessSuffix): SavingsAccount.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/SavingsAccount.cpp$(PreprocessSuffix) SavingsAccount.cpp


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r ./Debug/


