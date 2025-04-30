.class public Lcom/join/mgps/adapter/ForumPostsAdapter$u0;
.super Ljava/lang/Object;
.source "ForumPostsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/ForumPostsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "u0"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/ForumPostsAdapter$u0$d;,
        Lcom/join/mgps/adapter/ForumPostsAdapter$u0$b;,
        Lcom/join/mgps/adapter/ForumPostsAdapter$u0$c;,
        Lcom/join/mgps/adapter/ForumPostsAdapter$u0$a;,
        Lcom/join/mgps/adapter/ForumPostsAdapter$u0$f;,
        Lcom/join/mgps/adapter/ForumPostsAdapter$u0$e;,
        Lcom/join/mgps/adapter/ForumPostsAdapter$u0$k;,
        Lcom/join/mgps/adapter/ForumPostsAdapter$u0$o;,
        Lcom/join/mgps/adapter/ForumPostsAdapter$u0$j;,
        Lcom/join/mgps/adapter/ForumPostsAdapter$u0$l;,
        Lcom/join/mgps/adapter/ForumPostsAdapter$u0$m;,
        Lcom/join/mgps/adapter/ForumPostsAdapter$u0$n;,
        Lcom/join/mgps/adapter/ForumPostsAdapter$u0$h;,
        Lcom/join/mgps/adapter/ForumPostsAdapter$u0$i;,
        Lcom/join/mgps/adapter/ForumPostsAdapter$u0$g;
    }
.end annotation


# instance fields
.field a:Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;

.field b:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;Ljava/lang/Object;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$u0;->a:Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;

    .line 4
    iput-object p2, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$u0;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$u0;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public b()Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$u0;->a:Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;

    return-object v0
.end method

.method public c(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$u0;->b:Ljava/lang/Object;

    return-void
.end method

.method public d(Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$u0;->a:Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;

    return-void
.end method
