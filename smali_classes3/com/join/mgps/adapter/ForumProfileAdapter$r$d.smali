.class public Lcom/join/mgps/adapter/ForumProfileAdapter$r$d;
.super Ljava/lang/Object;
.source "ForumProfileAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/ForumProfileAdapter$r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field a:Lcom/join/mgps/dto/ForumBean;

.field b:Lcom/join/mgps/dto/ForumBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/join/mgps/dto/ForumBean;Lcom/join/mgps/dto/ForumBean;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumProfileAdapter$r$d;->a:Lcom/join/mgps/dto/ForumBean;

    .line 4
    iput-object p2, p0, Lcom/join/mgps/adapter/ForumProfileAdapter$r$d;->b:Lcom/join/mgps/dto/ForumBean;

    return-void
.end method
