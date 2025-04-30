.class public Lcom/netease/nis/quicklogin/utils/d;
.super Ljava/lang/Object;
.source "GrowDeviceUtils.java"


# direct methods
.method public static a()Ljava/lang/String;
    .locals 7

    const-string v0, "GrowDevice\u4e0d\u5b58\u5728"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "com.netease.mobsec.grow.GrowDevice"

    .line 9
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "get"

    const/4 v4, 0x0

    :try_start_1
    new-array v5, v4, [Ljava/lang/Class;

    .line 10
    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v5, "getToken"

    :try_start_2
    new-array v6, v4, [Ljava/lang/Class;

    .line 11
    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v5, v4, [Ljava/lang/Object;

    .line 12
    invoke-virtual {v3, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v2

    .line 13
    :catch_0
    invoke-static {v0}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 14
    :catch_1
    invoke-static {v0}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 15
    :catch_2
    invoke-static {v0}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 16
    :catch_3
    invoke-static {v0}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;)V

    :goto_0
    return-object v1
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 17
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "uuid"

    .line 18
    invoke-interface {p0, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    .line 19
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 20
    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 21
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-object v1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 9

    const-string v0, "GrowDevice\u4e0d\u5b58\u5728"

    :try_start_0
    const-string v1, "com.netease.mobsec.grow.GrowDevice"

    .line 1
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "get"

    const/4 v3, 0x0

    :try_start_1
    new-array v4, v3, [Ljava/lang/Class;

    .line 2
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v4, "init"

    const/4 v5, 0x2

    :try_start_2
    new-array v6, v5, [Ljava/lang/Class;

    .line 3
    const-class v7, Landroid/content/Context;

    aput-object v7, v6, v3

    const-class v7, Ljava/lang/String;

    const/4 v8, 0x1

    aput-object v7, v6, v8

    invoke-virtual {v1, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v4, 0x0

    new-array v6, v3, [Ljava/lang/Object;

    .line 4
    invoke-virtual {v2, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    new-array v4, v5, [Ljava/lang/Object;

    aput-object p0, v4, v3

    aput-object p1, v4, v8

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 5
    :catch_0
    invoke-static {v0}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :catch_1
    invoke-static {v0}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :catch_2
    invoke-static {v0}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :catch_3
    invoke-static {v0}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
