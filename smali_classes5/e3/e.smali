.class public Le3/e;
.super Ljava/lang/Object;
.source "DigitalSignature.java"


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Le3/e;->a:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le3/e;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Le3/e;->b:I

    return v0
.end method

.method public d(I)V
    .locals 0

    .line 1
    iput p1, p0, Le3/e;->a:I

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le3/e;->c:Ljava/lang/String;

    return-void
.end method

.method public f(I)V
    .locals 0

    .line 1
    iput p1, p0, Le3/e;->b:I

    return-void
.end method
