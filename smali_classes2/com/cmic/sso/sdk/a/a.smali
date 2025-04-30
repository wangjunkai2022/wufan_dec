.class public Lcom/cmic/sso/sdk/a/a;
.super Ljava/lang/Object;
.source "UmcConfigBean.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmic/sso/sdk/a/a$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:I

.field private l:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "rcs.cmpassport.com"

    .line 3
    iput-object v0, p0, Lcom/cmic/sso/sdk/a/a;->a:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/cmic/sso/sdk/a/a;->b:Ljava/lang/String;

    const-string v0, "config2.cmpassport.com"

    .line 5
    iput-object v0, p0, Lcom/cmic/sso/sdk/a/a;->c:Ljava/lang/String;

    const-string v0, "log2.cmpassport.com:9443"

    .line 6
    iput-object v0, p0, Lcom/cmic/sso/sdk/a/a;->d:Ljava/lang/String;

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/cmic/sso/sdk/a/a;->e:Z

    .line 8
    iput-boolean v0, p0, Lcom/cmic/sso/sdk/a/a;->f:Z

    .line 9
    iput-boolean v0, p0, Lcom/cmic/sso/sdk/a/a;->g:Z

    .line 10
    iput-boolean v0, p0, Lcom/cmic/sso/sdk/a/a;->h:Z

    .line 11
    iput-boolean v0, p0, Lcom/cmic/sso/sdk/a/a;->i:Z

    .line 12
    iput-boolean v0, p0, Lcom/cmic/sso/sdk/a/a;->j:Z

    const/4 v0, 0x3

    .line 13
    iput v0, p0, Lcom/cmic/sso/sdk/a/a;->k:I

    const/4 v0, 0x1

    .line 14
    iput v0, p0, Lcom/cmic/sso/sdk/a/a;->l:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/cmic/sso/sdk/a/a$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cmic/sso/sdk/a/a;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/cmic/sso/sdk/a/a;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/cmic/sso/sdk/a/a;->k:I

    return p1
.end method

.method static synthetic a(Lcom/cmic/sso/sdk/a/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/cmic/sso/sdk/a/a;->a:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/cmic/sso/sdk/a/a;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/cmic/sso/sdk/a/a;->e:Z

    return p1
.end method

.method static synthetic b(Lcom/cmic/sso/sdk/a/a;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/cmic/sso/sdk/a/a;->l:I

    return p1
.end method

.method static synthetic b(Lcom/cmic/sso/sdk/a/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/cmic/sso/sdk/a/a;->b:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/cmic/sso/sdk/a/a;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/cmic/sso/sdk/a/a;->f:Z

    return p1
.end method

.method static synthetic c(Lcom/cmic/sso/sdk/a/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cmic/sso/sdk/a/a;->c:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/cmic/sso/sdk/a/a;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/cmic/sso/sdk/a/a;->g:Z

    return p1
.end method

.method static synthetic d(Lcom/cmic/sso/sdk/a/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cmic/sso/sdk/a/a;->d:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lcom/cmic/sso/sdk/a/a;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/cmic/sso/sdk/a/a;->h:Z

    return p1
.end method

.method static synthetic e(Lcom/cmic/sso/sdk/a/a;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cmic/sso/sdk/a/a;->i:Z

    return p1
.end method

.method static synthetic f(Lcom/cmic/sso/sdk/a/a;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cmic/sso/sdk/a/a;->j:Z

    return p1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/cmic/sso/sdk/a/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/cmic/sso/sdk/a/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/cmic/sso/sdk/a/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/cmic/sso/sdk/a/a;->m()Lcom/cmic/sso/sdk/a/a;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/cmic/sso/sdk/a/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/cmic/sso/sdk/a/a;->e:Z

    return v0
.end method

.method public f()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/cmic/sso/sdk/a/a;->f:Z

    return v0
.end method

.method public g()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cmic/sso/sdk/a/a;->g:Z

    return v0
.end method

.method public h()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cmic/sso/sdk/a/a;->h:Z

    return v0
.end method

.method public i()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cmic/sso/sdk/a/a;->i:Z

    return v0
.end method

.method public j()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cmic/sso/sdk/a/a;->j:Z

    return v0
.end method

.method public k()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cmic/sso/sdk/a/a;->k:I

    return v0
.end method

.method public l()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cmic/sso/sdk/a/a;->l:I

    return v0
.end method

.method public m()Lcom/cmic/sso/sdk/a/a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmic/sso/sdk/a/a;

    return-object v0
.end method
