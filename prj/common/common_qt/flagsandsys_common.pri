#
# repo:			cmake_with_helpers
# name:			flagsandsys_common.pri
# path:			prj/common/common_qt/flagsandsys_common.pri
# created on:   2024 Jul 19
# created by:   Davit Kalantaryan (davit.kalantaryan@desy.de)
# usage:		Use this qt include file to calculate some platform specific stuff
#

message("!!! $${PWD}/flagsandsys_common.pri")

isEmpty(cmakeWithHelpersFlagsAndSysCommonIncluded){

    cmakeWithHelpersFlagsAndSysCommonIncluded = 1

    cmakeWithHelpersRepositoryRoot = $${PWD}/../../..

    isEmpty(artifactRoot) {
        artifactRoot = $$(artifactRoot)
        isEmpty(artifactRoot) {
	    artifactRoot = $${cmakeWithHelpersRepositoryRoot}
        }
    }

    INCLUDEPATH += $${cmakeWithHelpersRepositoryRoot}/include

    LIBS	+= -L$${cmakeWithHelpersRepositoryRoot}/sys/$${CODENAME}/$$CONFIGURATION/lib
    LIBS	+= -L$${cmakeWithHelpersRepositoryRoot}/sys/$${CODENAME}/$$CONFIGURATION/tlib
    

    #CONFIG += c++14
}
