@rem
@rem Copyright 2015 the original author or authors.
@rem
@rem Licensed under the Apache License, Version 2.0 (the "License");
@rem you may not use this file except in compliance with the License.
@rem You may obtain a copy of the License at
@rem
@rem      https://www.apache.org/licenses/LICENSE-2.0
@rem
@rem Unless required by applicable law or agreed to in writing, software
@rem distributed under the License is distributed on an "AS IS" BASIS,
@rem WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
@rem See the License for the specific language governing permissions and
@rem limitations under the License.
@rem

@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  trpp-second-1 startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Resolve any "." and ".." in APP_HOME to make it shorter.
for %%i in ("%APP_HOME%") do set APP_HOME=%%~fi

@rem Add default JVM options here. You can also use JAVA_OPTS and TRPP_SECOND_1_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if "%ERRORLEVEL%" == "0" goto execute

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto execute

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\Shmat-trpp-second-1-0.1.jar;%APP_HOME%\lib\opencsv-4.6.jar;%APP_HOME%\lib\micronaut-http-server-undertow-2.1.2.jar;%APP_HOME%\lib\micronaut-servlet-engine-2.1.2.jar;%APP_HOME%\lib\micronaut-servlet-core-2.1.2.jar;%APP_HOME%\lib\micronaut-http-client-2.3.3.jar;%APP_HOME%\lib\micronaut-http-client-core-2.3.3.jar;%APP_HOME%\lib\micronaut-http-server-2.3.3.jar;%APP_HOME%\lib\micronaut-runtime-2.3.3.jar;%APP_HOME%\lib\micronaut-validation-2.3.3.jar;%APP_HOME%\lib\micronaut-http-netty-2.3.3.jar;%APP_HOME%\lib\micronaut-websocket-2.3.3.jar;%APP_HOME%\lib\micronaut-router-2.3.3.jar;%APP_HOME%\lib\micronaut-http-2.3.3.jar;%APP_HOME%\lib\micronaut-aop-2.3.3.jar;%APP_HOME%\lib\micronaut-buffer-netty-2.3.3.jar;%APP_HOME%\lib\micronaut-inject-2.3.3.jar;%APP_HOME%\lib\javax.annotation-api-1.3.2.jar;%APP_HOME%\lib\log4j-slf4j-impl-2.12.1.jar;%APP_HOME%\lib\log4j-core-2.12.1.jar;%APP_HOME%\lib\log4j-api-2.12.1.jar;%APP_HOME%\lib\micronaut-core-2.3.3.jar;%APP_HOME%\lib\spotbugs-annotations-4.0.3.jar;%APP_HOME%\lib\jsr305-3.0.2.jar;%APP_HOME%\lib\snakeyaml-1.26.jar;%APP_HOME%\lib\slf4j-api-1.7.26.jar;%APP_HOME%\lib\rxjava-2.2.10.jar;%APP_HOME%\lib\reactive-streams-1.0.3.jar;%APP_HOME%\lib\validation-api-2.0.1.Final.jar;%APP_HOME%\lib\commons-text-1.3.jar;%APP_HOME%\lib\commons-lang3-3.8.1.jar;%APP_HOME%\lib\commons-beanutils-1.9.3.jar;%APP_HOME%\lib\commons-collections4-4.2.jar;%APP_HOME%\lib\netty-handler-proxy-4.1.59.Final.jar;%APP_HOME%\lib\netty-codec-socks-4.1.59.Final.jar;%APP_HOME%\lib\netty-codec-http2-4.1.59.Final.jar;%APP_HOME%\lib\netty-codec-http-4.1.59.Final.jar;%APP_HOME%\lib\netty-handler-4.1.59.Final.jar;%APP_HOME%\lib\netty-codec-4.1.59.Final.jar;%APP_HOME%\lib\netty-transport-4.1.59.Final.jar;%APP_HOME%\lib\netty-buffer-4.1.59.Final.jar;%APP_HOME%\lib\netty-resolver-4.1.59.Final.jar;%APP_HOME%\lib\netty-common-4.1.59.Final.jar;%APP_HOME%\lib\jackson-datatype-jdk8-2.11.2.jar;%APP_HOME%\lib\jackson-datatype-jsr310-2.11.2.jar;%APP_HOME%\lib\jackson-databind-2.11.2.jar;%APP_HOME%\lib\jackson-annotations-2.11.2.jar;%APP_HOME%\lib\jackson-core-2.11.2.jar;%APP_HOME%\lib\javax.inject-1.jar;%APP_HOME%\lib\undertow-servlet-2.2.3.Final.jar;%APP_HOME%\lib\commons-logging-1.2.jar;%APP_HOME%\lib\commons-collections-3.2.2.jar;%APP_HOME%\lib\undertow-core-2.2.3.Final.jar;%APP_HOME%\lib\jboss-servlet-api_4.0_spec-2.0.0.Final.jar;%APP_HOME%\lib\jboss-annotations-api_1.3_spec-2.0.1.Final.jar;%APP_HOME%\lib\javax.servlet-api-4.0.1.jar;%APP_HOME%\lib\xnio-nio-3.8.0.Final.jar;%APP_HOME%\lib\xnio-api-3.8.0.Final.jar;%APP_HOME%\lib\wildfly-client-config-1.0.1.Final.jar;%APP_HOME%\lib\jboss-threads-3.1.0.Final.jar;%APP_HOME%\lib\jboss-logging-3.4.1.Final.jar;%APP_HOME%\lib\wildfly-common-1.5.2.Final.jar


@rem Execute trpp-second-1
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %TRPP_SECOND_1_OPTS%  -classpath "%CLASSPATH%" ru.mirea.Application %*

:end
@rem End local scope for the variables with windows NT shell
if "%ERRORLEVEL%"=="0" goto mainEnd

:fail
rem Set variable TRPP_SECOND_1_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
if  not "" == "%TRPP_SECOND_1_EXIT_CONSOLE%" exit 1
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
