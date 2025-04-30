.class public Le3/c;
.super Ljava/lang/Object;
.source "CentralDirectory.java"


# instance fields
.field private a:Ljava/util/ArrayList;

.field private b:Le3/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Le3/e;
    .locals 1

    .line 1
    iget-object v0, p0, Le3/c;->b:Le3/e;

    return-object v0
.end method

.method public b()Ljava/util/ArrayList;
    .locals 1

    .line 1
    iget-object v0, p0, Le3/c;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public c(Le3/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le3/c;->b:Le3/e;

    return-void
.end method

.method public d(Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le3/c;->a:Ljava/util/ArrayList;

    return-void
.end method
