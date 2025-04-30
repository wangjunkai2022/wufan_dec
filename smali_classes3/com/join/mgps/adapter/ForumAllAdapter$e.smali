.class public Lcom/join/mgps/adapter/ForumAllAdapter$e;
.super Ljava/lang/Object;
.source "ForumAllAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/ForumAllAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/ForumAllAdapter$e$a;,
        Lcom/join/mgps/adapter/ForumAllAdapter$e$b;,
        Lcom/join/mgps/adapter/ForumAllAdapter$e$d;,
        Lcom/join/mgps/adapter/ForumAllAdapter$e$c;,
        Lcom/join/mgps/adapter/ForumAllAdapter$e$e;,
        Lcom/join/mgps/adapter/ForumAllAdapter$e$g;,
        Lcom/join/mgps/adapter/ForumAllAdapter$e$h;,
        Lcom/join/mgps/adapter/ForumAllAdapter$e$i;,
        Lcom/join/mgps/adapter/ForumAllAdapter$e$f;
    }
.end annotation


# instance fields
.field a:Lcom/join/mgps/adapter/ForumAllAdapter$ViewType;

.field b:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/join/mgps/adapter/ForumAllAdapter$ViewType;Ljava/lang/Object;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumAllAdapter$e;->a:Lcom/join/mgps/adapter/ForumAllAdapter$ViewType;

    .line 4
    iput-object p2, p0, Lcom/join/mgps/adapter/ForumAllAdapter$e;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumAllAdapter$e;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public b()Lcom/join/mgps/adapter/ForumAllAdapter$ViewType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumAllAdapter$e;->a:Lcom/join/mgps/adapter/ForumAllAdapter$ViewType;

    return-object v0
.end method

.method public c(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumAllAdapter$e;->b:Ljava/lang/Object;

    return-void
.end method

.method public d(Lcom/join/mgps/adapter/ForumAllAdapter$ViewType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumAllAdapter$e;->a:Lcom/join/mgps/adapter/ForumAllAdapter$ViewType;

    return-void
.end method
