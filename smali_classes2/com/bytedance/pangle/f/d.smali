.class public final Lcom/bytedance/pangle/f/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    api = 0x15
.end annotation


# direct methods
.method public static a(Ljava/lang/String;)Lcom/bytedance/pangle/f/o;
    .locals 12

    const-string v0, "Failed to collect certificates from "

    const/4 v1, 0x0

    .line 1
    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "r"

    invoke-direct {v2, p0, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, 0x2

    const/4 v4, 0x4

    :try_start_1
    new-array v3, v3, [I

    const v5, -0xfac9740

    const/4 v6, 0x0

    aput v5, v3, v6

    const v7, 0x7109871a

    const/4 v8, 0x1

    aput v7, v3, v8

    .line 2
    invoke-static {p0, v2, v3}, Lcom/bytedance/pangle/f/f;->a(Ljava/lang/String;Ljava/io/RandomAccessFile;[I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3
    :try_start_2
    sget-object v3, Lcom/bytedance/pangle/f/f;->a:Ljava/util/HashMap;

    invoke-virtual {v3, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/pangle/f/m;

    if-eqz v3, :cond_2

    .line 4
    invoke-static {v2, v3}, Lcom/bytedance/pangle/f/c;->a(Ljava/io/RandomAccessFile;Lcom/bytedance/pangle/f/m;)Lcom/bytedance/pangle/f/c$c;

    move-result-object v3

    new-array v5, v8, [[Ljava/security/cert/Certificate;

    .line 5
    iget-object v8, v3, Lcom/bytedance/pangle/f/c$c;->a:[Ljava/security/cert/X509Certificate;

    aput-object v8, v5, v6

    .line 6
    invoke-static {v5}, Lcom/bytedance/pangle/f/d;->a([[Ljava/security/cert/Certificate;)[Landroid/content/pm/Signature;

    move-result-object v5

    .line 7
    iget-object v8, v3, Lcom/bytedance/pangle/f/c$c;->b:Lcom/bytedance/pangle/f/c$b;

    if-eqz v8, :cond_1

    .line 8
    iget-object v1, v8, Lcom/bytedance/pangle/f/c$b;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v8, v1, [Landroid/content/pm/Signature;

    .line 9
    iget-object v9, v3, Lcom/bytedance/pangle/f/c$c;->b:Lcom/bytedance/pangle/f/c$b;

    iget-object v9, v9, Lcom/bytedance/pangle/f/c$b;->b:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [I

    :goto_0
    if-ge v6, v1, :cond_0

    .line 10
    new-instance v10, Landroid/content/pm/Signature;

    iget-object v11, v3, Lcom/bytedance/pangle/f/c$c;->b:Lcom/bytedance/pangle/f/c$b;

    iget-object v11, v11, Lcom/bytedance/pangle/f/c$b;->a:Ljava/util/List;

    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/security/cert/X509Certificate;

    invoke-virtual {v11}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/content/pm/Signature;-><init>([B)V

    aput-object v10, v8, v6

    .line 11
    iget-object v10, v3, Lcom/bytedance/pangle/f/c$c;->b:Lcom/bytedance/pangle/f/c$b;

    iget-object v10, v10, Lcom/bytedance/pangle/f/c$b;->b:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    aput v10, v9, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    move-object v1, v8

    goto :goto_1

    :cond_1
    move-object v9, v1

    .line 12
    :goto_1
    new-instance v3, Lcom/bytedance/pangle/f/o;

    const/4 v6, 0x3

    invoke-direct {v3, v5, v6, v1, v9}, Lcom/bytedance/pangle/f/o;-><init>([Landroid/content/pm/Signature;I[Landroid/content/pm/Signature;[I)V
    :try_end_2
    .catch Lcom/bytedance/pangle/f/n; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 13
    :try_start_3
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    return-object v3

    .line 14
    :cond_2
    :try_start_4
    new-instance v1, Lcom/bytedance/pangle/f/n;

    const-string v3, "findVerifiedSigner, No APK Signature Scheme v3 signature in package"

    invoke-direct {v1, v3}, Lcom/bytedance/pangle/f/n;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_4
    .catch Lcom/bytedance/pangle/f/n; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_1
    move-exception v1

    .line 15
    :try_start_5
    new-instance v3, Lcom/bytedance/pangle/f/q;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " using APK Signature Scheme v3"

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, v4, p0, v1}, Lcom/bytedance/pangle/f/q;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 16
    :catch_2
    :try_start_6
    sget-object v1, Lcom/bytedance/pangle/f/f;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    invoke-virtual {v1, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/pangle/f/m;

    if-eqz v1, :cond_3

    .line 17
    invoke-static {v2, v1}, Lcom/bytedance/pangle/f/b;->a(Ljava/io/RandomAccessFile;Lcom/bytedance/pangle/f/m;)Lcom/bytedance/pangle/f/b$a;

    move-result-object v1

    .line 18
    iget-object v1, v1, Lcom/bytedance/pangle/f/b$a;->a:[[Ljava/security/cert/X509Certificate;

    .line 19
    invoke-static {v1}, Lcom/bytedance/pangle/f/d;->a([[Ljava/security/cert/Certificate;)[Landroid/content/pm/Signature;

    move-result-object v1

    .line 20
    new-instance v3, Lcom/bytedance/pangle/f/o;

    invoke-direct {v3, v1}, Lcom/bytedance/pangle/f/o;-><init>([Landroid/content/pm/Signature;)V
    :try_end_6
    .catch Lcom/bytedance/pangle/f/n; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 21
    :try_start_7
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    :catch_3
    return-object v3

    .line 22
    :cond_3
    :try_start_8
    new-instance v1, Lcom/bytedance/pangle/f/n;

    const-string v3, "findVerifiedSigner, No APK Signature Scheme v2 signature in package"

    invoke-direct {v1, v3}, Lcom/bytedance/pangle/f/n;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_8
    .catch Lcom/bytedance/pangle/f/n; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catch_4
    move-exception v1

    .line 23
    :try_start_9
    new-instance v3, Lcom/bytedance/pangle/f/q;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " using APK Signature Scheme v2"

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, v4, p0, v1}, Lcom/bytedance/pangle/f/q;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 24
    :catch_5
    invoke-static {p0}, Lcom/bytedance/pangle/f/a;->a(Ljava/lang/String;)Lcom/bytedance/pangle/f/o;

    move-result-object p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 25
    :try_start_a
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    :catch_6
    return-object p0

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_2

    :catch_7
    move-exception v1

    .line 26
    :try_start_b
    new-instance v3, Lcom/bytedance/pangle/f/q;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " when findSignatureInfo at once"

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, v4, p0, v1}, Lcom/bytedance/pangle/f/q;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :catchall_1
    move-exception p0

    goto :goto_2

    .line 27
    :catch_8
    :try_start_c
    new-instance v0, Lcom/bytedance/pangle/f/q;

    const/4 v2, 0x6

    const-string v3, "failed to read apk file, minSignatureSchemeVersion : 1, apkPath : "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v2, p0}, Lcom/bytedance/pangle/f/q;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :goto_2
    if-eqz v1, :cond_4

    .line 28
    :try_start_d
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9

    .line 29
    :catch_9
    :cond_4
    goto :goto_4

    :goto_3
    throw p0

    :goto_4
    goto :goto_3
.end method

.method public static a([[Ljava/security/cert/Certificate;)[Landroid/content/pm/Signature;
    .locals 7

    .line 30
    array-length v0, p0

    new-array v0, v0, [Landroid/content/pm/Signature;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 31
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_4

    .line 32
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    const/4 v5, 0x1

    if-lt v3, v4, :cond_0

    const/16 v4, 0x1c

    if-gt v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_2

    .line 33
    const-class v3, Landroid/content/pm/Signature;

    new-array v4, v5, [Ljava/lang/Class;

    const-class v6, [Ljava/security/cert/Certificate;

    aput-object v6, v4, v1

    invoke-static {v3, v4}, Lcom/bytedance/pangle/a/b/a;->a(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 34
    invoke-virtual {v3, v5}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    :cond_1
    if-eqz v3, :cond_3

    .line 35
    invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->isAccessible()Z

    move-result v4

    if-eqz v4, :cond_3

    :try_start_0
    new-array v4, v5, [Ljava/lang/Object;

    .line 36
    aget-object v5, p0, v2

    aput-object v5, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/Signature;

    aput-object v3, v0, v2
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    .line 37
    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception v3

    .line 38
    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2

    :catch_2
    move-exception v3

    .line 39
    invoke-virtual {v3}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_2

    .line 40
    :cond_2
    new-instance v3, Landroid/content/pm/Signature;

    aget-object v4, p0, v2

    aget-object v4, v4, v1

    invoke-virtual {v4}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/pm/Signature;-><init>([B)V

    aput-object v3, v0, v2

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method
