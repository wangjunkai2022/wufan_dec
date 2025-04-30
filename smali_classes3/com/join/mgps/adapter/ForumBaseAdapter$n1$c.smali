.class public Lcom/join/mgps/adapter/ForumBaseAdapter$n1$c;
.super Ljava/lang/Object;
.source "ForumBaseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/ForumBaseAdapter$n1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Z

.field public d:I

.field public e:Ljava/lang/String;

.field public f:Z

.field public g:Z

.field public h:I

.field public i:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;ZZII)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$c;->a:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$c;->b:Ljava/lang/String;

    .line 5
    iput-boolean p3, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$c;->c:Z

    .line 6
    iput p4, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$c;->d:I

    .line 7
    iput-object p5, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$c;->e:Ljava/lang/String;

    .line 8
    iput-boolean p6, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$c;->f:Z

    .line 9
    iput-boolean p7, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$c;->g:Z

    .line 10
    iput p8, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$c;->h:I

    .line 11
    iput p9, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$c;->i:I

    return-void
.end method
