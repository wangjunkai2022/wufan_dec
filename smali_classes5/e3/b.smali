.class public Le3/b;
.super Ljava/lang/Object;
.source "ArchiveExtraDataRecord.java"


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
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le3/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Le3/b;->b:I

    return v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Le3/b;->a:I

    return v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le3/b;->c:Ljava/lang/String;

    return-void
.end method

.method public e(I)V
    .locals 0

    .line 1
    iput p1, p0, Le3/b;->b:I

    return-void
.end method

.method public f(I)V
    .locals 0

    .line 1
    iput p1, p0, Le3/b;->a:I

    return-void
.end method
