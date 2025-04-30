.class public Lcom/join/mgps/adapter/GamePaiWeiAdapter$d;
.super Ljava/lang/Object;
.source "GamePaiWeiAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/GamePaiWeiAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/GamePaiWeiAdapter$d$a;
    }
.end annotation


# instance fields
.field a:Lcom/join/mgps/adapter/GamePaiWeiAdapter$ViewType;

.field b:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/join/mgps/adapter/GamePaiWeiAdapter$ViewType;Ljava/lang/Object;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/join/mgps/adapter/GamePaiWeiAdapter$d;->a:Lcom/join/mgps/adapter/GamePaiWeiAdapter$ViewType;

    .line 4
    iput-object p2, p0, Lcom/join/mgps/adapter/GamePaiWeiAdapter$d;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/GamePaiWeiAdapter$d;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public b()Lcom/join/mgps/adapter/GamePaiWeiAdapter$ViewType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/GamePaiWeiAdapter$d;->a:Lcom/join/mgps/adapter/GamePaiWeiAdapter$ViewType;

    return-object v0
.end method

.method public c(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/GamePaiWeiAdapter$d;->b:Ljava/lang/Object;

    return-void
.end method

.method public d(Lcom/join/mgps/adapter/GamePaiWeiAdapter$ViewType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/GamePaiWeiAdapter$d;->a:Lcom/join/mgps/adapter/GamePaiWeiAdapter$ViewType;

    return-void
.end method
