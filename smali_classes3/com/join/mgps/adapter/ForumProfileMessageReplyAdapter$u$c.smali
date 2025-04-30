.class public Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$c;
.super Ljava/lang/Object;
.source "ForumProfileMessageReplyAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$c;->a:I

    .line 4
    iput-object p2, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$c;->b:Ljava/lang/String;

    return-void
.end method
