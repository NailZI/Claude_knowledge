# Remote Ops — база знаний

## Известные машины

- `192.168.55.93` — Windows 10 Pro, RDP/SSH `user`/`user`, без интернета. JDK: `E:\tools\jdk-25.0.3.9-hotspot`. Gradle daemon капризный (loopback connection issues) — компилировать через `javac` напрямую с classpath из gradle cache `C:\Users\user\.gradle\caches\modules-2\files-2.1\**\*.jar`. Проекты в `E:\load_tests\OPCUA_client_v2/v3/v4`.

## Рабочие паттерны (подтверждено повторно)

- `.cmd`-launcher с прямым однострочным вызовом gradle (`gradlew.bat run --offline --no-daemon --args="cmd arg1 arg2" 1> out.log 2> err.log`) — надёжен.
- Scheduled Task с триггером +5 секунд — самый надёжный способ для процессов длиннее нескольких минут.
- Запись `.ps1`-файла через `sftp.open(...).write()` перед выполнением — устраняет проблемы вложенного экранирования.

## Новые грабли

(пока пусто — заполнять по мере новых сессий)

## Уточнения к базовому документу

(пока пусто)
