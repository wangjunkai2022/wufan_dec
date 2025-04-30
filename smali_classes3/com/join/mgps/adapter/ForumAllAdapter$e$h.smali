.class public Lcom/join/mgps/adapter/ForumAllAdapter$e$h;
.super Ljava/lang/Object;
.source "ForumAllAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/ForumAllAdapter$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation


# instance fields
.field public a:Z

.field public b:Ljava/lang/String;

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;II)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-boolean p1, p0, Lcom/join/mgps/adapter/ForumAllAdapter$e$h;->a:Z

    .line 4
    iput-object p2, p0, Lcom/join/mgps/adapter/ForumAllAdapter$e$h;->b:Ljava/lang/String;

    .line 5
    iput p3, p0, Lcom/join/mgps/adapter/ForumAllAdapter$e$h;->c:I

    .line 6
    iput p4, p0, Lcom/join/mgps/adapter/ForumAllAdapter$e$h;->d:I

    return-void
.end method
