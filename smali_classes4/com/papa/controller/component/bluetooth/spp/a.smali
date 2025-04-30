.class public Lcom/papa/controller/component/bluetooth/spp/a;
.super Ljava/lang/Object;
.source "BluetoothSPP.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa/controller/component/bluetooth/spp/a$d;,
        Lcom/papa/controller/component/bluetooth/spp/a$e;,
        Lcom/papa/controller/component/bluetooth/spp/a$g;,
        Lcom/papa/controller/component/bluetooth/spp/a$f;
    }
.end annotation


# instance fields
.field private a:Lcom/papa/controller/component/bluetooth/spp/a$f;

.field private b:Lcom/papa/controller/component/bluetooth/spp/a$g;

.field private c:Lcom/papa/controller/component/bluetooth/spp/a$e;

.field private d:Lcom/papa/controller/component/bluetooth/spp/a$d;

.field private e:Landroid/content/Context;

.field private f:Landroid/bluetooth/BluetoothAdapter;

.field private g:Lcom/papa/controller/component/bluetooth/spp/b;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Ljava/lang/String;

.field private p:Z

.field private q:Lcom/papa/controller/component/bluetooth/spp/a$e;

.field private r:I

.field private final s:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->a:Lcom/papa/controller/component/bluetooth/spp/a$f;

    .line 3
    iput-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->b:Lcom/papa/controller/component/bluetooth/spp/a$g;

    .line 4
    iput-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->c:Lcom/papa/controller/component/bluetooth/spp/a$e;

    .line 5
    iput-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->d:Lcom/papa/controller/component/bluetooth/spp/a$d;

    .line 6
    iput-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->f:Landroid/bluetooth/BluetoothAdapter;

    .line 7
    iput-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->g:Lcom/papa/controller/component/bluetooth/spp/b;

    .line 8
    iput-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->h:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->i:Ljava/lang/String;

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->j:Z

    .line 11
    iput-boolean v0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->k:Z

    .line 12
    iput-boolean v0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->l:Z

    .line 13
    iput-boolean v0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->m:Z

    .line 14
    iput-boolean v0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->n:Z

    const-string v1, ""

    .line 15
    iput-object v1, p0, Lcom/papa/controller/component/bluetooth/spp/a;->o:Ljava/lang/String;

    const/4 v1, 0x1

    .line 16
    iput-boolean v1, p0, Lcom/papa/controller/component/bluetooth/spp/a;->p:Z

    .line 17
    iput v0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->r:I

    .line 18
    new-instance v0, Lcom/papa/controller/component/bluetooth/spp/a$b;

    invoke-direct {v0, p0}, Lcom/papa/controller/component/bluetooth/spp/a$b;-><init>(Lcom/papa/controller/component/bluetooth/spp/a;)V

    iput-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->s:Landroid/os/Handler;

    .line 19
    iput-object p1, p0, Lcom/papa/controller/component/bluetooth/spp/a;->e:Landroid/content/Context;

    .line 20
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/papa/controller/component/bluetooth/spp/a;->f:Landroid/bluetooth/BluetoothAdapter;

    return-void
.end method

.method static synthetic a(Lcom/papa/controller/component/bluetooth/spp/a;)Lcom/papa/controller/component/bluetooth/spp/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->g:Lcom/papa/controller/component/bluetooth/spp/b;

    return-object p0
.end method

.method static synthetic b(Lcom/papa/controller/component/bluetooth/spp/a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->n:Z

    return p0
.end method

.method static synthetic c(Lcom/papa/controller/component/bluetooth/spp/a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->o:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/papa/controller/component/bluetooth/spp/a;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/controller/component/bluetooth/spp/a;->n:Z

    return p1
.end method

.method static synthetic e(Lcom/papa/controller/component/bluetooth/spp/a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->m:Z

    return p0
.end method

.method static synthetic f(Lcom/papa/controller/component/bluetooth/spp/a;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/controller/component/bluetooth/spp/a;->m:Z

    return p1
.end method

.method static synthetic g(Lcom/papa/controller/component/bluetooth/spp/a;Lcom/papa/controller/component/bluetooth/spp/a$e;)Lcom/papa/controller/component/bluetooth/spp/a$e;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/controller/component/bluetooth/spp/a;->q:Lcom/papa/controller/component/bluetooth/spp/a$e;

    return-object p1
.end method

.method static synthetic h(Lcom/papa/controller/component/bluetooth/spp/a;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/controller/component/bluetooth/spp/a;->j:Z

    return p1
.end method

.method static synthetic i(Lcom/papa/controller/component/bluetooth/spp/a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->r:I

    return p0
.end method

.method static synthetic j(Lcom/papa/controller/component/bluetooth/spp/a;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/controller/component/bluetooth/spp/a;->r:I

    return p1
.end method

.method static synthetic k(Lcom/papa/controller/component/bluetooth/spp/a;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->r:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/papa/controller/component/bluetooth/spp/a;->r:I

    return v0
.end method

.method static synthetic l(Lcom/papa/controller/component/bluetooth/spp/a;)Lcom/papa/controller/component/bluetooth/spp/a$d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->d:Lcom/papa/controller/component/bluetooth/spp/a$d;

    return-object p0
.end method

.method static synthetic m(Lcom/papa/controller/component/bluetooth/spp/a;)Lcom/papa/controller/component/bluetooth/spp/a$g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->b:Lcom/papa/controller/component/bluetooth/spp/a$g;

    return-object p0
.end method

.method static synthetic n(Lcom/papa/controller/component/bluetooth/spp/a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->h:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic o(Lcom/papa/controller/component/bluetooth/spp/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/controller/component/bluetooth/spp/a;->h:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic p(Lcom/papa/controller/component/bluetooth/spp/a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->i:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic q(Lcom/papa/controller/component/bluetooth/spp/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/controller/component/bluetooth/spp/a;->i:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic r(Lcom/papa/controller/component/bluetooth/spp/a;)Lcom/papa/controller/component/bluetooth/spp/a$e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->c:Lcom/papa/controller/component/bluetooth/spp/a$e;

    return-object p0
.end method

.method static synthetic s(Lcom/papa/controller/component/bluetooth/spp/a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->l:Z

    return p0
.end method

.method static synthetic t(Lcom/papa/controller/component/bluetooth/spp/a;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/controller/component/bluetooth/spp/a;->l:Z

    return p1
.end method

.method static synthetic u(Lcom/papa/controller/component/bluetooth/spp/a;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->e:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic v(Lcom/papa/controller/component/bluetooth/spp/a;)Lcom/papa/controller/component/bluetooth/spp/a$f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->a:Lcom/papa/controller/component/bluetooth/spp/a$f;

    return-object p0
.end method

.method static synthetic w(Lcom/papa/controller/component/bluetooth/spp/a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->k:Z

    return p0
.end method

.method static synthetic x(Lcom/papa/controller/component/bluetooth/spp/a;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/controller/component/bluetooth/spp/a;->k:Z

    return p1
.end method


# virtual methods
.method public A(Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    sget-object v0, Lcom/papa/controller/component/bluetooth/spp/c;->r:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->f:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->g:Lcom/papa/controller/component/bluetooth/spp/b;

    invoke-virtual {v0, p1}, Lcom/papa/controller/component/bluetooth/spp/b;->j(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method public B(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->f:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->g:Lcom/papa/controller/component/bluetooth/spp/b;

    invoke-virtual {v0, p1}, Lcom/papa/controller/component/bluetooth/spp/b;->j(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method public C()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->g:Lcom/papa/controller/component/bluetooth/spp/b;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, p0, Lcom/papa/controller/component/bluetooth/spp/a;->n:Z

    .line 3
    invoke-virtual {v0}, Lcom/papa/controller/component/bluetooth/spp/b;->q()V

    .line 4
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->g:Lcom/papa/controller/component/bluetooth/spp/b;

    invoke-virtual {v0}, Lcom/papa/controller/component/bluetooth/spp/b;->n()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->n:Z

    .line 6
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->g:Lcom/papa/controller/component/bluetooth/spp/b;

    iget-boolean v1, p0, Lcom/papa/controller/component/bluetooth/spp/a;->p:Z

    invoke-virtual {v0, v1}, Lcom/papa/controller/component/bluetooth/spp/b;->p(Z)V

    :cond_0
    return-void
.end method

.method public D()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->f:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    return-void
.end method

.method public E()Landroid/bluetooth/BluetoothAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->f:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method public F()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->i:Ljava/lang/String;

    return-object v0
.end method

.method public G()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->h:Ljava/lang/String;

    return-object v0
.end method

.method public H()[Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->f:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 3
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 4
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public I()[Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->f:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 3
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 4
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public J()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->g:Lcom/papa/controller/component/bluetooth/spp/b;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/papa/controller/component/bluetooth/spp/b;->n()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public K()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->j:Z

    return v0
.end method

.method public L()Z
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/papa/controller/component/bluetooth/spp/a;->f:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :catch_0
    :cond_1
    :goto_0
    return v0
.end method

.method public M()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->f:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public N()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->f:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    return v0
.end method

.method public O()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->g:Lcom/papa/controller/component/bluetooth/spp/b;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public P(Ljava/lang/String;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->g:Lcom/papa/controller/component/bluetooth/spp/b;

    invoke-virtual {v0}, Lcom/papa/controller/component/bluetooth/spp/b;->n()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    if-eqz p2, :cond_0

    .line 2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\r\n"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/papa/controller/component/bluetooth/spp/a;->g:Lcom/papa/controller/component/bluetooth/spp/b;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/papa/controller/component/bluetooth/spp/b;->r([B)V

    :cond_1
    return-void
.end method

.method public Q([BZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->g:Lcom/papa/controller/component/bluetooth/spp/b;

    invoke-virtual {v0}, Lcom/papa/controller/component/bluetooth/spp/b;->n()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    if-eqz p2, :cond_1

    .line 2
    array-length p2, p1

    add-int/lit8 p2, p2, 0x2

    new-array v0, p2, [B

    const/4 v1, 0x0

    .line 3
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 4
    aget-byte v2, p1, v1

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p2, -0x2

    const/16 v1, 0xa

    .line 5
    aput-byte v1, v0, p1

    add-int/lit8 p2, p2, -0x1

    const/16 p1, 0xd

    .line 6
    aput-byte p1, v0, p2

    .line 7
    iget-object p1, p0, Lcom/papa/controller/component/bluetooth/spp/a;->g:Lcom/papa/controller/component/bluetooth/spp/b;

    invoke-virtual {p1, v0}, Lcom/papa/controller/component/bluetooth/spp/b;->r([B)V

    goto :goto_1

    .line 8
    :cond_1
    iget-object p2, p0, Lcom/papa/controller/component/bluetooth/spp/a;->g:Lcom/papa/controller/component/bluetooth/spp/b;

    invoke-virtual {p2, p1}, Lcom/papa/controller/component/bluetooth/spp/b;->r([B)V

    :cond_2
    :goto_1
    return-void
.end method

.method public R(Lcom/papa/controller/component/bluetooth/spp/a$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/controller/component/bluetooth/spp/a;->d:Lcom/papa/controller/component/bluetooth/spp/a$d;

    return-void
.end method

.method public S(Lcom/papa/controller/component/bluetooth/spp/a$e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/controller/component/bluetooth/spp/a;->c:Lcom/papa/controller/component/bluetooth/spp/a$e;

    return-void
.end method

.method public T(Lcom/papa/controller/component/bluetooth/spp/a$f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/controller/component/bluetooth/spp/a;->a:Lcom/papa/controller/component/bluetooth/spp/a$f;

    return-void
.end method

.method public U(Z)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/papa/controller/component/bluetooth/spp/a;->stopService()V

    .line 2
    invoke-virtual {p0, p1}, Lcom/papa/controller/component/bluetooth/spp/a;->startService(Z)V

    .line 3
    iput-boolean p1, p0, Lcom/papa/controller/component/bluetooth/spp/a;->p:Z

    return-void
.end method

.method public V(Lcom/papa/controller/component/bluetooth/spp/a$g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/controller/component/bluetooth/spp/a;->b:Lcom/papa/controller/component/bluetooth/spp/a$g;

    return-void
.end method

.method public W()V
    .locals 3

    .line 1
    new-instance v0, Lcom/papa/controller/component/bluetooth/spp/b;

    iget-object v1, p0, Lcom/papa/controller/component/bluetooth/spp/a;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/papa/controller/component/bluetooth/spp/a;->s:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/papa/controller/component/bluetooth/spp/b;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->g:Lcom/papa/controller/component/bluetooth/spp/b;

    return-void
.end method

.method public X()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->f:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    move-result v0

    return v0
.end method

.method public Y()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->k:Z

    return-void
.end method

.method public startService(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->g:Lcom/papa/controller/component/bluetooth/spp/b;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/papa/controller/component/bluetooth/spp/b;->n()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->n:Z

    .line 4
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->g:Lcom/papa/controller/component/bluetooth/spp/b;

    invoke-virtual {v0, p1}, Lcom/papa/controller/component/bluetooth/spp/b;->p(Z)V

    .line 5
    iput-boolean p1, p0, Lcom/papa/controller/component/bluetooth/spp/a;->p:Z

    :cond_0
    return-void
.end method

.method public stopService()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->g:Lcom/papa/controller/component/bluetooth/spp/b;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, p0, Lcom/papa/controller/component/bluetooth/spp/a;->n:Z

    .line 3
    invoke-virtual {v0}, Lcom/papa/controller/component/bluetooth/spp/b;->q()V

    .line 4
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/papa/controller/component/bluetooth/spp/a$a;

    invoke-direct {v1, p0}, Lcom/papa/controller/component/bluetooth/spp/a$a;-><init>(Lcom/papa/controller/component/bluetooth/spp/a;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public y(Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->k:Z

    if-nez v0, :cond_5

    .line 2
    iput-object p1, p0, Lcom/papa/controller/component/bluetooth/spp/a;->o:Ljava/lang/String;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->k:Z

    .line 4
    iput-boolean v0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->j:Z

    .line 5
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->d:Lcom/papa/controller/component/bluetooth/spp/a$d;

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0}, Lcom/papa/controller/component/bluetooth/spp/a$d;->a()V

    .line 7
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-virtual {p0}, Lcom/papa/controller/component/bluetooth/spp/a;->I()[Ljava/lang/String;

    move-result-object v2

    .line 10
    invoke-virtual {p0}, Lcom/papa/controller/component/bluetooth/spp/a;->H()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 11
    :goto_0
    array-length v6, v2

    if-ge v5, v6, :cond_2

    .line 12
    aget-object v6, v2, v5

    invoke-virtual {v6, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 13
    aget-object v6, v3, v5

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    aget-object v6, v2, v5

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 15
    :cond_2
    new-instance p1, Lcom/papa/controller/component/bluetooth/spp/a$c;

    invoke-direct {p1, p0, v0, v1}, Lcom/papa/controller/component/bluetooth/spp/a$c;-><init>(Lcom/papa/controller/component/bluetooth/spp/a;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object p1, p0, Lcom/papa/controller/component/bluetooth/spp/a;->q:Lcom/papa/controller/component/bluetooth/spp/a$e;

    .line 16
    invoke-virtual {p0, p1}, Lcom/papa/controller/component/bluetooth/spp/a;->S(Lcom/papa/controller/component/bluetooth/spp/a$e;)V

    .line 17
    iput v4, p0, Lcom/papa/controller/component/bluetooth/spp/a;->r:I

    .line 18
    iget-object p1, p0, Lcom/papa/controller/component/bluetooth/spp/a;->d:Lcom/papa/controller/component/bluetooth/spp/a$d;

    if-eqz p1, :cond_3

    .line 19
    aget-object v1, v2, v4

    aget-object v2, v3, v4

    invoke-interface {p1, v1, v2}, Lcom/papa/controller/component/bluetooth/spp/a$d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 21
    iget p1, p0, Lcom/papa/controller/component/bluetooth/spp/a;->r:I

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/papa/controller/component/bluetooth/spp/a;->B(Ljava/lang/String;)V

    goto :goto_1

    .line 22
    :cond_4
    iget-object p1, p0, Lcom/papa/controller/component/bluetooth/spp/a;->e:Landroid/content/Context;

    const-string v0, "Device name mismatch"

    invoke-static {p1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_5
    :goto_1
    return-void
.end method

.method public z()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a;->f:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    move-result v0

    return v0
.end method
