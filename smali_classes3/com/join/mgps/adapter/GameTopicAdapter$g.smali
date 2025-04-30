.class public Lcom/join/mgps/adapter/GameTopicAdapter$g;
.super Ljava/lang/Object;
.source "GameTopicAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/GameTopicAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/GameTopicAdapter$g$a;,
        Lcom/join/mgps/adapter/GameTopicAdapter$g$f;,
        Lcom/join/mgps/adapter/GameTopicAdapter$g$c;,
        Lcom/join/mgps/adapter/GameTopicAdapter$g$d;,
        Lcom/join/mgps/adapter/GameTopicAdapter$g$e;,
        Lcom/join/mgps/adapter/GameTopicAdapter$g$b;
    }
.end annotation


# instance fields
.field a:Lcom/join/mgps/adapter/GameTopicAdapter$ViewType;

.field b:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/join/mgps/adapter/GameTopicAdapter$ViewType;Ljava/lang/Object;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/join/mgps/adapter/GameTopicAdapter$g;->a:Lcom/join/mgps/adapter/GameTopicAdapter$ViewType;

    .line 4
    iput-object p2, p0, Lcom/join/mgps/adapter/GameTopicAdapter$g;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/GameTopicAdapter$g;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public b()Lcom/join/mgps/adapter/GameTopicAdapter$ViewType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/GameTopicAdapter$g;->a:Lcom/join/mgps/adapter/GameTopicAdapter$ViewType;

    return-object v0
.end method

.method public c(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/GameTopicAdapter$g;->b:Ljava/lang/Object;

    return-void
.end method

.method public d(Lcom/join/mgps/adapter/GameTopicAdapter$ViewType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/GameTopicAdapter$g;->a:Lcom/join/mgps/adapter/GameTopicAdapter$ViewType;

    return-void
.end method
