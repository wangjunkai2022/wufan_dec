.class public Lcom/join/mgps/adapter/ForumBaseAdapter$n1;
.super Ljava/lang/Object;
.source "ForumBaseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/ForumBaseAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "n1"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/ForumBaseAdapter$n1$i;,
        Lcom/join/mgps/adapter/ForumBaseAdapter$n1$h;,
        Lcom/join/mgps/adapter/ForumBaseAdapter$n1$b;,
        Lcom/join/mgps/adapter/ForumBaseAdapter$n1$a;,
        Lcom/join/mgps/adapter/ForumBaseAdapter$n1$e;,
        Lcom/join/mgps/adapter/ForumBaseAdapter$n1$z;,
        Lcom/join/mgps/adapter/ForumBaseAdapter$n1$g;,
        Lcom/join/mgps/adapter/ForumBaseAdapter$n1$f;,
        Lcom/join/mgps/adapter/ForumBaseAdapter$n1$j;,
        Lcom/join/mgps/adapter/ForumBaseAdapter$n1$l;,
        Lcom/join/mgps/adapter/ForumBaseAdapter$n1$k;,
        Lcom/join/mgps/adapter/ForumBaseAdapter$n1$m;,
        Lcom/join/mgps/adapter/ForumBaseAdapter$n1$r;,
        Lcom/join/mgps/adapter/ForumBaseAdapter$n1$q;,
        Lcom/join/mgps/adapter/ForumBaseAdapter$n1$y;,
        Lcom/join/mgps/adapter/ForumBaseAdapter$n1$n;,
        Lcom/join/mgps/adapter/ForumBaseAdapter$n1$u;,
        Lcom/join/mgps/adapter/ForumBaseAdapter$n1$o;,
        Lcom/join/mgps/adapter/ForumBaseAdapter$n1$v;,
        Lcom/join/mgps/adapter/ForumBaseAdapter$n1$p;,
        Lcom/join/mgps/adapter/ForumBaseAdapter$n1$x;,
        Lcom/join/mgps/adapter/ForumBaseAdapter$n1$c;,
        Lcom/join/mgps/adapter/ForumBaseAdapter$n1$b0;,
        Lcom/join/mgps/adapter/ForumBaseAdapter$n1$d;,
        Lcom/join/mgps/adapter/ForumBaseAdapter$n1$a0;,
        Lcom/join/mgps/adapter/ForumBaseAdapter$n1$s;,
        Lcom/join/mgps/adapter/ForumBaseAdapter$n1$w;,
        Lcom/join/mgps/adapter/ForumBaseAdapter$n1$t;
    }
.end annotation


# instance fields
.field a:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

.field b:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;Ljava/lang/Object;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$n1;->a:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 4
    iput-object p2, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$n1;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$n1;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public b()Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$n1;->a:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    return-object v0
.end method

.method public c(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$n1;->b:Ljava/lang/Object;

    return-void
.end method

.method public d(Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$n1;->a:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    return-void
.end method
