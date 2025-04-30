.class public Lcom/mob/commons/b/m;
.super Lcom/mob/commons/b/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/commons/b/m$a;
    }
.end annotation


# instance fields
.field private c:Lcom/mob/commons/b/m$a;

.field private d:Lcom/mob/commons/b/m$a;

.field private e:Lcom/mob/commons/b/m$a;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/mob/commons/b/g;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/mob/commons/b/m;->c:Lcom/mob/commons/b/m$a;

    .line 3
    iput-object p1, p0, Lcom/mob/commons/b/m;->d:Lcom/mob/commons/b/m$a;

    .line 4
    iput-object p1, p0, Lcom/mob/commons/b/m;->e:Lcom/mob/commons/b/m$a;

    const-string p1, "100215079"

    .line 5
    iput-object p1, p0, Lcom/mob/commons/b/m;->f:Ljava/lang/String;

    .line 6
    sget-object p1, Lcom/mob/commons/n;->i:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 7
    sget-object p1, Lcom/mob/commons/n;->i:Ljava/lang/String;

    iput-object p1, p0, Lcom/mob/commons/b/m;->f:Ljava/lang/String;

    .line 8
    :cond_0
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "oamt vivo appid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mob/commons/b/m;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 2
    const-class v0, Ljava/lang/String;

    :try_start_0
    const-string v1, "027Aegel]i>eifdef+i=fmfdghfmfiejgh.ejmMhieifd2fjXeiQeXef4j+gh"

    invoke-static {v1}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "003Vgg?je"

    .line 3
    invoke-static {v2}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v6, 0x1

    aput-object v0, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v5

    const-string p1, "007Uedelekelfdgeel"

    invoke-static {p1}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 4
    invoke-static {}, Lcom/mob/commons/b/c;->a()Lcom/mob/commons/b/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/commons/b/c;->a(Ljava/lang/Object;)V

    return-object p2
.end method

.method static synthetic a(Lcom/mob/commons/b/m;ZI)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/mob/commons/b/m;->a(ZI)V

    return-void
.end method

.method private a(ZI)V
    .locals 1

    .line 18
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/mob/commons/b/m;->a(I)Ljava/lang/String;

    move-result-object p1

    if-nez p2, :cond_0

    .line 19
    invoke-virtual {p0, p1}, Lcom/mob/commons/b/g;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 20
    invoke-virtual {p0, p1}, Lcom/mob/commons/b/g;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 21
    invoke-virtual {p0, p1}, Lcom/mob/commons/b/g;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    :goto_0
    return-void
.end method

.method private b(I)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "052Yehfdel;ejVel+eghhWehfd;mDfmXk+efGk:fdfm-km,ghfmfh_iGhieifd*k@ef)ij2eiDh fhKijYel:eNefgiefEjVeifh-ihXfkfkfhgjee"

    invoke-static {v0}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/mob/commons/b/m;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "052>ehfdel+ej@el6eghhUehfd?mAfm\'k8ef9k fdfm,km.ghfmfh1iVhieifd?kWef,ijVei?hVfhZijBelTePefgief6j7eifh.ihBhgfkfhgjee"

    invoke-static {v0}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/mob/commons/b/m;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-string p1, "051Fehfdel+ej!el,eghhHehfd[m9fmJk8efOkWfdfm]kmSghfmfh_iMhieifdMk[ef9ij ei>hTfhRij(elSeUefgief+j%eifh?ih!gmfkfhgj"

    .line 3
    invoke-static {p1}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private c(I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/mob/commons/b/m;->e:Lcom/mob/commons/b/m$a;

    if-nez p1, :cond_3

    .line 8
    new-instance p1, Lcom/mob/commons/b/m$a;

    invoke-direct {p1, p0, v1}, Lcom/mob/commons/b/m$a;-><init>(Lcom/mob/commons/b/m;I)V

    iput-object p1, p0, Lcom/mob/commons/b/m;->e:Lcom/mob/commons/b/m$a;

    .line 9
    iget-object p1, p0, Lcom/mob/commons/b/g;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-direct {p0, v1}, Lcom/mob/commons/b/m;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/mob/commons/b/m;->e:Lcom/mob/commons/b/m$a;

    invoke-virtual {p1, v1, v0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/mob/commons/b/m;->d:Lcom/mob/commons/b/m$a;

    if-nez p1, :cond_3

    .line 11
    new-instance p1, Lcom/mob/commons/b/m$a;

    invoke-direct {p1, p0, v1}, Lcom/mob/commons/b/m$a;-><init>(Lcom/mob/commons/b/m;I)V

    iput-object p1, p0, Lcom/mob/commons/b/m;->d:Lcom/mob/commons/b/m$a;

    .line 12
    iget-object p1, p0, Lcom/mob/commons/b/g;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-direct {p0, v1}, Lcom/mob/commons/b/m;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/mob/commons/b/m;->d:Lcom/mob/commons/b/m$a;

    invoke-virtual {p1, v1, v0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    .line 13
    :cond_2
    iget-object p1, p0, Lcom/mob/commons/b/m;->c:Lcom/mob/commons/b/m$a;

    if-nez p1, :cond_3

    .line 14
    new-instance p1, Lcom/mob/commons/b/m$a;

    invoke-direct {p1, p0, v0}, Lcom/mob/commons/b/m$a;-><init>(Lcom/mob/commons/b/m;I)V

    iput-object p1, p0, Lcom/mob/commons/b/m;->c:Lcom/mob/commons/b/m$a;

    .line 15
    iget-object p1, p0, Lcom/mob/commons/b/g;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-direct {p0, v0}, Lcom/mob/commons/b/m;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v2, p0, Lcom/mob/commons/b/m;->c:Lcom/mob/commons/b/m$a;

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public a(I)Ljava/lang/String;
    .locals 8

    .line 5
    invoke-direct {p0, p1}, Lcom/mob/commons/b/m;->b(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 6
    :cond_0
    :try_start_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 7
    iget-object v0, p0, Lcom/mob/commons/b/g;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-eqz v0, :cond_1

    .line 8
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "005kWegfeed_j"

    .line 9
    invoke-static {v2}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 10
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 11
    :catchall_0
    :try_start_3
    invoke-direct {p0, p1}, Lcom/mob/commons/b/m;->c(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    return-object v1

    :catchall_2
    move-exception v2

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    .line 12
    :goto_0
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 13
    :catchall_3
    :cond_2
    :try_start_5
    invoke-direct {p0, p1}, Lcom/mob/commons/b/m;->c(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_2

    :catchall_4
    move-exception v2

    move-object v0, v1

    .line 14
    :goto_1
    :try_start_6
    invoke-static {}, Lcom/mob/commons/b/c;->a()Lcom/mob/commons/b/c;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/mob/commons/b/c;->a(Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    if-eqz v0, :cond_2

    goto :goto_0

    :catchall_5
    :goto_2
    return-object v1

    :catchall_6
    move-exception v1

    if-eqz v0, :cond_3

    .line 15
    :try_start_7
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    .line 16
    :catchall_7
    :cond_3
    :try_start_8
    invoke-direct {p0, p1}, Lcom/mob/commons/b/m;->c(I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    .line 17
    :catchall_8
    goto :goto_4

    :goto_3
    throw v1

    :goto_4
    goto :goto_3
.end method

.method protected c()Lcom/mob/commons/b/g$c;
    .locals 2

    .line 1
    new-instance v0, Lcom/mob/commons/b/g$c;

    invoke-direct {v0}, Lcom/mob/commons/b/g$c;-><init>()V

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v1}, Lcom/mob/commons/b/m;->a(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mob/commons/b/g$c;->b:Ljava/lang/String;

    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0, v1}, Lcom/mob/commons/b/m;->a(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mob/commons/b/g$c;->e:Ljava/lang/String;

    const/4 v1, 0x2

    .line 4
    invoke-virtual {p0, v1}, Lcom/mob/commons/b/m;->a(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mob/commons/b/g$c;->c:Ljava/lang/String;

    .line 5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/mob/commons/b/g;->i()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mob/commons/b/g$c;->c:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public declared-synchronized h()Z
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "1"

    const-string v1, "034fjSeighefgh+eVfmghejghfmefSijZelKe*efgief;j-eiefYi\'fmghed1ff<fdei(eji"

    .line 1
    invoke-static {v1}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-direct {p0, v1, v2}, Lcom/mob/commons/b/m;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
