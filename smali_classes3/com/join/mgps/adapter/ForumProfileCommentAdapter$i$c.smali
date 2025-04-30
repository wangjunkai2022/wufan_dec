.class public Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i$c;
.super Ljava/lang/Object;
.source "ForumProfileCommentAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:I

.field public b:Z

.field public c:Lcom/join/mgps/dto/ForumBean$ForumProfileCommentBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IZLcom/join/mgps/dto/ForumBean$ForumProfileCommentBean;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i$c;->a:I

    .line 4
    iput-boolean p2, p0, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i$c;->b:Z

    .line 5
    iput-object p3, p0, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i$c;->c:Lcom/join/mgps/dto/ForumBean$ForumProfileCommentBean;

    return-void
.end method
