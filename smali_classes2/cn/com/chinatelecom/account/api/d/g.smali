.class public Lcn/com/chinatelecom/account/api/d/g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/com/chinatelecom/account/api/d/g$a;
    }
.end annotation


# instance fields
.field public a:Landroid/net/Network;

.field public b:I

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Z

.field public f:Z

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:I

.field private k:I


# direct methods
.method public constructor <init>(Lcn/com/chinatelecom/account/api/d/g$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcn/com/chinatelecom/account/api/d/g$a;->a(Lcn/com/chinatelecom/account/api/d/g$a;)I

    move-result v0

    iput v0, p0, Lcn/com/chinatelecom/account/api/d/g;->j:I

    invoke-static {p1}, Lcn/com/chinatelecom/account/api/d/g$a;->b(Lcn/com/chinatelecom/account/api/d/g$a;)I

    move-result v0

    iput v0, p0, Lcn/com/chinatelecom/account/api/d/g;->k:I

    invoke-static {p1}, Lcn/com/chinatelecom/account/api/d/g$a;->c(Lcn/com/chinatelecom/account/api/d/g$a;)Landroid/net/Network;

    move-result-object v0

    iput-object v0, p0, Lcn/com/chinatelecom/account/api/d/g;->a:Landroid/net/Network;

    invoke-static {p1}, Lcn/com/chinatelecom/account/api/d/g$a;->d(Lcn/com/chinatelecom/account/api/d/g$a;)I

    move-result v0

    iput v0, p0, Lcn/com/chinatelecom/account/api/d/g;->b:I

    invoke-static {p1}, Lcn/com/chinatelecom/account/api/d/g$a;->e(Lcn/com/chinatelecom/account/api/d/g$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/com/chinatelecom/account/api/d/g;->c:Ljava/lang/String;

    invoke-static {p1}, Lcn/com/chinatelecom/account/api/d/g$a;->f(Lcn/com/chinatelecom/account/api/d/g$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/com/chinatelecom/account/api/d/g;->d:Ljava/lang/String;

    invoke-static {p1}, Lcn/com/chinatelecom/account/api/d/g$a;->g(Lcn/com/chinatelecom/account/api/d/g$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/com/chinatelecom/account/api/d/g;->e:Z

    invoke-static {p1}, Lcn/com/chinatelecom/account/api/d/g$a;->h(Lcn/com/chinatelecom/account/api/d/g$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/com/chinatelecom/account/api/d/g;->f:Z

    invoke-static {p1}, Lcn/com/chinatelecom/account/api/d/g$a;->i(Lcn/com/chinatelecom/account/api/d/g$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/com/chinatelecom/account/api/d/g;->g:Ljava/lang/String;

    invoke-static {p1}, Lcn/com/chinatelecom/account/api/d/g$a;->j(Lcn/com/chinatelecom/account/api/d/g$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/com/chinatelecom/account/api/d/g;->h:Ljava/lang/String;

    invoke-static {p1}, Lcn/com/chinatelecom/account/api/d/g$a;->k(Lcn/com/chinatelecom/account/api/d/g$a;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcn/com/chinatelecom/account/api/d/g;->i:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcn/com/chinatelecom/account/api/d/g;->j:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0xbb8

    :goto_0
    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcn/com/chinatelecom/account/api/d/g;->k:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0xbb8

    :goto_0
    return v0
.end method
