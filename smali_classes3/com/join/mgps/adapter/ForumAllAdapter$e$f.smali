.class public Lcom/join/mgps/adapter/ForumAllAdapter$e$f;
.super Ljava/lang/Object;
.source "ForumAllAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/ForumAllAdapter$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field public a:Z

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:J

.field public e:Z

.field public f:I

.field public g:I

.field public h:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;JZIIZ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-boolean p1, p0, Lcom/join/mgps/adapter/ForumAllAdapter$e$f;->a:Z

    .line 4
    iput-object p2, p0, Lcom/join/mgps/adapter/ForumAllAdapter$e$f;->b:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/join/mgps/adapter/ForumAllAdapter$e$f;->c:Ljava/lang/String;

    .line 6
    iput-wide p4, p0, Lcom/join/mgps/adapter/ForumAllAdapter$e$f;->d:J

    .line 7
    iput-boolean p6, p0, Lcom/join/mgps/adapter/ForumAllAdapter$e$f;->e:Z

    .line 8
    iput p7, p0, Lcom/join/mgps/adapter/ForumAllAdapter$e$f;->f:I

    .line 9
    iput p8, p0, Lcom/join/mgps/adapter/ForumAllAdapter$e$f;->g:I

    .line 10
    iput-boolean p9, p0, Lcom/join/mgps/adapter/ForumAllAdapter$e$f;->h:Z

    return-void
.end method
