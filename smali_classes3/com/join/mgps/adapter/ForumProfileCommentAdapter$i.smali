.class public Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i;
.super Ljava/lang/Object;
.source "ForumProfileCommentAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/ForumProfileCommentAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i$a;,
        Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i$c;,
        Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i$b;
    }
.end annotation


# instance fields
.field a:Lcom/join/mgps/adapter/ForumProfileCommentAdapter$ViewType;

.field b:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/join/mgps/adapter/ForumProfileCommentAdapter$ViewType;Ljava/lang/Object;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i;->a:Lcom/join/mgps/adapter/ForumProfileCommentAdapter$ViewType;

    .line 4
    iput-object p2, p0, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public b()Lcom/join/mgps/adapter/ForumProfileCommentAdapter$ViewType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i;->a:Lcom/join/mgps/adapter/ForumProfileCommentAdapter$ViewType;

    return-object v0
.end method

.method public c(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i;->b:Ljava/lang/Object;

    return-void
.end method

.method public d(Lcom/join/mgps/adapter/ForumProfileCommentAdapter$ViewType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i;->a:Lcom/join/mgps/adapter/ForumProfileCommentAdapter$ViewType;

    return-void
.end method
