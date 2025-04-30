.class public Lcom/join/mgps/adapter/ForumTopicAdapter$t;
.super Ljava/lang/Object;
.source "ForumTopicAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/ForumTopicAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "t"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/ForumTopicAdapter$t$e;,
        Lcom/join/mgps/adapter/ForumTopicAdapter$t$d;,
        Lcom/join/mgps/adapter/ForumTopicAdapter$t$c;,
        Lcom/join/mgps/adapter/ForumTopicAdapter$t$b;,
        Lcom/join/mgps/adapter/ForumTopicAdapter$t$k;,
        Lcom/join/mgps/adapter/ForumTopicAdapter$t$f;,
        Lcom/join/mgps/adapter/ForumTopicAdapter$t$l;,
        Lcom/join/mgps/adapter/ForumTopicAdapter$t$h;,
        Lcom/join/mgps/adapter/ForumTopicAdapter$t$i;,
        Lcom/join/mgps/adapter/ForumTopicAdapter$t$j;,
        Lcom/join/mgps/adapter/ForumTopicAdapter$t$g;,
        Lcom/join/mgps/adapter/ForumTopicAdapter$t$a;
    }
.end annotation


# instance fields
.field a:Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;

.field b:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;Ljava/lang/Object;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumTopicAdapter$t;->a:Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;

    .line 4
    iput-object p2, p0, Lcom/join/mgps/adapter/ForumTopicAdapter$t;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumTopicAdapter$t;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public b()Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumTopicAdapter$t;->a:Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;

    return-object v0
.end method

.method public c(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumTopicAdapter$t;->b:Ljava/lang/Object;

    return-void
.end method

.method public d(Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumTopicAdapter$t;->a:Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;

    return-void
.end method
