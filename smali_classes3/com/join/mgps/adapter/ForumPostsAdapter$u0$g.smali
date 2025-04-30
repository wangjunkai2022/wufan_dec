.class public Lcom/join/mgps/adapter/ForumPostsAdapter$u0$g;
.super Ljava/lang/Object;
.source "ForumPostsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/ForumPostsAdapter$u0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lcom/join/mgps/dto/ForumBean$GameInfo;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/join/mgps/dto/ForumBean$GameInfo;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$g;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$g;->b:Lcom/join/mgps/dto/ForumBean$GameInfo;

    .line 4
    iput-object p3, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$g;->c:Ljava/lang/String;

    return-void
.end method
