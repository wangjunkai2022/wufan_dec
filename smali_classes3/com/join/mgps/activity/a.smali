.class Lcom/join/mgps/activity/a;
.super Ljava/lang/Object;
.source "A.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([Ljava/lang/String;)V
    .locals 2

    const-string p0, ""

    :try_start_0
    const-string v0, "8dc57caac1919a4cf54ec783988b919a"

    .line 1
    invoke-static {v0, p0}, Lcom/join/mgps/Util/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "e9dc6e1313cbfa881bf731d3f13a499d2058141fda3cef5d98bdc24c53f07b2b"

    .line 2
    invoke-static {v0, p0}, Lcom/join/mgps/Util/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Se+mLqD-mV@y6^Z+androidId=b804c40a24cc55d4&channelNum=0&deviceId=b804c40a24cc55d4&device_id=&package_name=com.join.android.app.mgsim.wufun&package_type=wufun&page=1&platform=wufun&target_version=26&type=3&uid=129969022&version=250_4.8.0.1"

    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/v0;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 5
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 6
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
