.class public Lcom/join/mgps/va/overmind/g;
.super Ljava/lang/Object;
.source "VExtModConfig.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/join/mgps/Util/t$c;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/Util/t;

    invoke-direct {v0, p0}, Lcom/join/mgps/Util/t;-><init>(Ljava/lang/String;)V

    const-string p0, "archiveInfo"

    .line 2
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/t;->b(Ljava/lang/String;)Lcom/join/mgps/Util/t$c;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/Util/t;

    invoke-direct {v0, p0}, Lcom/join/mgps/Util/t;-><init>(Ljava/lang/String;)V

    const-string p0, "gameInfo"

    .line 2
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/t;->b(Ljava/lang/String;)Lcom/join/mgps/Util/t$c;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-string v0, "gameId"

    .line 3
    invoke-virtual {p0, v0}, Lcom/join/mgps/Util/t$c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/String;)Lcom/join/mgps/Util/t$c;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/Util/t;

    invoke-direct {v0, p0}, Lcom/join/mgps/Util/t;-><init>(Ljava/lang/String;)V

    const-string p0, "switch"

    .line 2
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/t;->b(Ljava/lang/String;)Lcom/join/mgps/Util/t$c;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/Util/t;

    invoke-direct {v0, p0}, Lcom/join/mgps/Util/t;-><init>(Ljava/lang/String;)V

    const-string p0, "soInfo"

    .line 2
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/t;->b(Ljava/lang/String;)Lcom/join/mgps/Util/t$c;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-string v0, "modPath"

    .line 3
    invoke-virtual {p0, v0}, Lcom/join/mgps/Util/t$c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/lang/String;)I
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/Util/t;

    invoke-direct {v0, p0}, Lcom/join/mgps/Util/t;-><init>(Ljava/lang/String;)V

    const-string p0, "soInfo"

    .line 2
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/t;->b(Ljava/lang/String;)Lcom/join/mgps/Util/t$c;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "code"

    .line 3
    invoke-virtual {p0, v1}, Lcom/join/mgps/Util/t$c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 5
    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static f(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/Util/t;

    invoke-direct {v0, p0}, Lcom/join/mgps/Util/t;-><init>(Ljava/lang/String;)V

    const-string p0, "soInfo"

    .line 2
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/t;->b(Ljava/lang/String;)Lcom/join/mgps/Util/t$c;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "0"

    return-object p0

    :cond_0
    const-string v0, "version"

    .line 3
    invoke-virtual {p0, v0}, Lcom/join/mgps/Util/t$c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/Util/t;

    invoke-direct {v0, p0}, Lcom/join/mgps/Util/t;-><init>(Ljava/lang/String;)V

    const-string p0, "archiveInfo"

    .line 2
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/t;->b(Ljava/lang/String;)Lcom/join/mgps/Util/t$c;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/join/mgps/Util/t$c;

    invoke-direct {v1, p0}, Lcom/join/mgps/Util/t$c;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/t;->f(Lcom/join/mgps/Util/t$c;)V

    :cond_0
    const-string p0, "archivePath"

    .line 5
    invoke-virtual {v1, p0, p1}, Lcom/join/mgps/Util/t$c;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "archivePath2"

    .line 6
    invoke-virtual {v1, p0, p2}, Lcom/join/mgps/Util/t$c;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "archiveId"

    .line 7
    invoke-virtual {v1, p0, p3}, Lcom/join/mgps/Util/t$c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/Util/t;->j()Z

    return-void
.end method

.method public static h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/Util/t;

    invoke-direct {v0, p0}, Lcom/join/mgps/Util/t;-><init>(Ljava/lang/String;)V

    const-string p0, "soInfo"

    .line 2
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/t;->b(Ljava/lang/String;)Lcom/join/mgps/Util/t$c;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/join/mgps/Util/t$c;

    invoke-direct {v1, p0}, Lcom/join/mgps/Util/t$c;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/t;->f(Lcom/join/mgps/Util/t$c;)V

    :cond_0
    const-string p0, "modPath"

    .line 5
    invoke-virtual {v1, p0, p1}, Lcom/join/mgps/Util/t$c;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "version"

    .line 6
    invoke-virtual {v1, p0, p2}, Lcom/join/mgps/Util/t$c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "code"

    invoke-virtual {v1, p2, p0}, Lcom/join/mgps/Util/t$c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "lastModifyTime"

    invoke-virtual {v1, p1, p0}, Lcom/join/mgps/Util/t$c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/Util/t;->j()Z

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/Util/t;

    invoke-direct {v0, p0}, Lcom/join/mgps/Util/t;-><init>(Ljava/lang/String;)V

    const-string p0, "switch"

    .line 2
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/t;->b(Ljava/lang/String;)Lcom/join/mgps/Util/t$c;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/join/mgps/Util/t$c;

    invoke-direct {v1, p0}, Lcom/join/mgps/Util/t$c;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/t;->f(Lcom/join/mgps/Util/t$c;)V

    :cond_0
    const-string p0, "goldFingerSwitch"

    .line 5
    invoke-virtual {v1, p0, p1}, Lcom/join/mgps/Util/t$c;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "archiveCloudSwitch"

    .line 6
    invoke-virtual {v1, p0, p2}, Lcom/join/mgps/Util/t$c;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "config"

    .line 7
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/t;->b(Ljava/lang/String;)Lcom/join/mgps/Util/t$c;

    move-result-object p1

    if-nez p1, :cond_1

    .line 8
    new-instance p1, Lcom/join/mgps/Util/t$c;

    invoke-direct {p1, p0}, Lcom/join/mgps/Util/t$c;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/t;->f(Lcom/join/mgps/Util/t$c;)V

    :cond_1
    const-string p0, "channelNum"

    .line 10
    invoke-virtual {p1, p0, p3}, Lcom/join/mgps/Util/t$c;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "targetVersion"

    .line 11
    invoke-virtual {p1, p0, p4}, Lcom/join/mgps/Util/t$c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0}, Lcom/join/mgps/Util/t;->j()Z

    return-void
.end method

.method public static j(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/Util/t;

    invoke-direct {v0, p0}, Lcom/join/mgps/Util/t;-><init>(Ljava/lang/String;)V

    const-string p0, "gameInfo"

    .line 2
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/t;->b(Ljava/lang/String;)Lcom/join/mgps/Util/t$c;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/join/mgps/Util/t$c;

    invoke-direct {v1, p0}, Lcom/join/mgps/Util/t$c;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/t;->f(Lcom/join/mgps/Util/t$c;)V

    :cond_0
    const-string p0, "gameId"

    .line 5
    invoke-virtual {v1, p0, p1}, Lcom/join/mgps/Util/t$c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/Util/t;->j()Z

    return-void
.end method

.method public static k(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/Util/t;

    invoke-direct {v0, p0}, Lcom/join/mgps/Util/t;-><init>(Ljava/lang/String;)V

    const-string p0, "gameInfo"

    .line 2
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/t;->b(Ljava/lang/String;)Lcom/join/mgps/Util/t$c;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/join/mgps/Util/t$c;

    invoke-direct {v1, p0}, Lcom/join/mgps/Util/t$c;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/t;->f(Lcom/join/mgps/Util/t$c;)V

    :cond_0
    const-string p0, "modPath"

    .line 5
    invoke-virtual {v1, p0, p1}, Lcom/join/mgps/Util/t$c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/Util/t;->j()Z

    return-void
.end method
