.class public Lcom/join/mgps/adapter/ForumPostsAdapter$u0$c;
.super Ljava/lang/Object;
.source "ForumPostsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/ForumPostsAdapter$u0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:I

.field public e:Z

.field public f:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;IZZ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$c;->a:I

    .line 4
    iput-object p2, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$c;->b:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$c;->c:Ljava/lang/String;

    .line 6
    iput p4, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$c;->d:I

    .line 7
    iput-boolean p5, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$c;->e:Z

    .line 8
    iput-boolean p6, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$c;->f:Z

    return-void
.end method
