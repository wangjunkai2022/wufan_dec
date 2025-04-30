.class public Lcom/cmic/sso/sdk/b/a$a;
.super Ljava/lang/Object;
.source "UMCTelephonyManagement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmic/sso/sdk/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/cmic/sso/sdk/b/a$a;->a:I

    .line 3
    iput v0, p0, Lcom/cmic/sso/sdk/b/a$a;->b:I

    return-void
.end method

.method static synthetic a(Lcom/cmic/sso/sdk/b/a$a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/cmic/sso/sdk/b/a$a;->b:I

    return p0
.end method

.method static synthetic a(Lcom/cmic/sso/sdk/b/a$a;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/cmic/sso/sdk/b/a$a;->a:I

    return p1
.end method

.method static synthetic b(Lcom/cmic/sso/sdk/b/a$a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/cmic/sso/sdk/b/a$a;->a:I

    return p0
.end method

.method static synthetic b(Lcom/cmic/sso/sdk/b/a$a;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/cmic/sso/sdk/b/a$a;->b:I

    return p1
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 3
    iget v0, p0, Lcom/cmic/sso/sdk/b/a$a;->b:I

    return v0
.end method
