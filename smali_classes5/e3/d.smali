.class public Le3/d;
.super Ljava/lang/Object;
.source "DataDescriptor.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I


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
    iget v0, p0, Le3/d;->b:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le3/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Le3/d;->c:I

    return v0
.end method

.method public d(I)V
    .locals 0

    .line 1
    iput p1, p0, Le3/d;->b:I

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le3/d;->a:Ljava/lang/String;

    return-void
.end method

.method public f(I)V
    .locals 0

    .line 1
    iput p1, p0, Le3/d;->c:I

    return-void
.end method
