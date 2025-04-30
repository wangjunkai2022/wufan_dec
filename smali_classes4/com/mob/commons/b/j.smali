.class public Lcom/mob/commons/b/j;
.super Lcom/mob/commons/b/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mob/commons/b/g;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/mob/commons/b/j;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1}, Lcom/mob/commons/b/j;->a(Landroid/os/Bundle;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "002!de<h"

    .line 3
    invoke-static {p2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p1, :cond_1

    const-string p2, "007liVfgfgdfff+i"

    .line 4
    invoke-static {p2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Landroid/os/Bundle;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    const-string v1, "0040dgec!hi"

    .line 5
    invoke-static {v1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    const/4 v0, 0x1

    nop

    :catchall_0
    :cond_0
    return v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "036UdgecdkNdiSdkSdfgg]dgdkeldkdcfcdedfelde=hiDdk;dVdePdZdi$gZde8hi4dk*d+de]dQdi"

    .line 1
    invoke-static {v1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_1

    .line 3
    iget-object v3, p0, Lcom/mob/commons/b/g;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v1

    .line 4
    invoke-virtual {v1, p1, p2, v0}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const/16 p1, 0x18

    if-lt v2, p1, :cond_0

    .line 5
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->close()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_0

    :cond_1
    const/16 v3, 0xb

    if-lt v2, v3, :cond_2

    .line 7
    iget-object v2, p0, Lcom/mob/commons/b/g;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1, p1, p2, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 8
    invoke-static {}, Lcom/mob/commons/b/c;->a()Lcom/mob/commons/b/c;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/commons/b/c;->a(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-object v0
.end method

.method private j()Z
    .locals 3

    const-string v0, "009%defgehdcZeeYecdh d"

    .line 1
    invoke-static {v0}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/mob/commons/b/j;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Lcom/mob/commons/b/j;->a(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "009Ddefgfgdc]ee<ecdhJd"

    .line 3
    invoke-static {v1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected c()Lcom/mob/commons/b/g$c;
    .locals 3

    .line 1
    new-instance v0, Lcom/mob/commons/b/g$c;

    invoke-direct {v0}, Lcom/mob/commons/b/g$c;-><init>()V

    .line 2
    invoke-direct {p0}, Lcom/mob/commons/b/j;->j()Z

    move-result v1

    iput-boolean v1, v0, Lcom/mob/commons/b/g$c;->a:Z

    const-string v1, "007]ffHid3ejejegfi"

    .line 3
    invoke-static {v1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mob/commons/b/g;->b:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/mob/commons/b/j;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mob/commons/b/g$c;->c:Ljava/lang/String;

    const-string v1, "007UffVid_flejegfi"

    .line 4
    invoke-static {v1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/mob/commons/b/j;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mob/commons/b/g$c;->b:Ljava/lang/String;

    const-string v1, "007CffAidEgfejegfi"

    .line 5
    invoke-static {v1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mob/commons/b/g;->b:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/mob/commons/b/j;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mob/commons/b/g$c;->e:Ljava/lang/String;

    return-object v0
.end method
