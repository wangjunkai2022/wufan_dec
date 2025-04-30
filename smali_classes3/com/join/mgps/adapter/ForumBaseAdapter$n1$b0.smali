.class public Lcom/join/mgps/adapter/ForumBaseAdapter$n1$b0;
.super Ljava/lang/Object;
.source "ForumBaseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/ForumBaseAdapter$n1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b0"
.end annotation


# instance fields
.field public a:Lcom/join/mgps/dto/RecommendLabelTag;

.field public b:Z


# direct methods
.method public constructor <init>(Lcom/join/mgps/dto/RecommendLabelTag;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$b0;->a:Lcom/join/mgps/dto/RecommendLabelTag;

    .line 3
    iput-boolean p2, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$b0;->b:Z

    return-void
.end method
