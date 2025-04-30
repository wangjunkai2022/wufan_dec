.class public Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0;
.super Ljava/lang/Object;
.source "ForumProfileFavoritesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "k0"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$n;,
        Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$h;,
        Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$o;,
        Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$k;,
        Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$l;,
        Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$m;,
        Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$j;,
        Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$a;,
        Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$b;,
        Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$f;,
        Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$c;,
        Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$e;,
        Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$g;,
        Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$d;,
        Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$i;
    }
.end annotation


# instance fields
.field a:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;

.field b:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;Ljava/lang/Object;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0;->a:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;

    .line 4
    iput-object p2, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public b()Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0;->a:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;

    return-object v0
.end method

.method public c(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0;->b:Ljava/lang/Object;

    return-void
.end method

.method public d(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0;->a:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;

    return-void
.end method
