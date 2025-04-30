.class public Lcom/join/mgps/adapter/ForumProfileAdapter$r;
.super Ljava/lang/Object;
.source "ForumProfileAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/ForumProfileAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "r"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/ForumProfileAdapter$r$a;,
        Lcom/join/mgps/adapter/ForumProfileAdapter$r$b;,
        Lcom/join/mgps/adapter/ForumProfileAdapter$r$d;,
        Lcom/join/mgps/adapter/ForumProfileAdapter$r$c;,
        Lcom/join/mgps/adapter/ForumProfileAdapter$r$e;,
        Lcom/join/mgps/adapter/ForumProfileAdapter$r$j;,
        Lcom/join/mgps/adapter/ForumProfileAdapter$r$g;,
        Lcom/join/mgps/adapter/ForumProfileAdapter$r$h;,
        Lcom/join/mgps/adapter/ForumProfileAdapter$r$i;,
        Lcom/join/mgps/adapter/ForumProfileAdapter$r$f;
    }
.end annotation


# instance fields
.field a:Lcom/join/mgps/adapter/ForumProfileAdapter$ViewType;

.field b:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/join/mgps/adapter/ForumProfileAdapter$ViewType;Ljava/lang/Object;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumProfileAdapter$r;->a:Lcom/join/mgps/adapter/ForumProfileAdapter$ViewType;

    .line 4
    iput-object p2, p0, Lcom/join/mgps/adapter/ForumProfileAdapter$r;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileAdapter$r;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public b()Lcom/join/mgps/adapter/ForumProfileAdapter$ViewType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileAdapter$r;->a:Lcom/join/mgps/adapter/ForumProfileAdapter$ViewType;

    return-object v0
.end method

.method public c(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumProfileAdapter$r;->b:Ljava/lang/Object;

    return-void
.end method

.method public d(Lcom/join/mgps/adapter/ForumProfileAdapter$ViewType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumProfileAdapter$r;->a:Lcom/join/mgps/adapter/ForumProfileAdapter$ViewType;

    return-void
.end method
