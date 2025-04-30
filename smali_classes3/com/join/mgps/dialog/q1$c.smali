.class Lcom/join/mgps/dialog/q1$c;
.super Ljava/lang/Object;
.source "PostingSelectCoinsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dialog/q1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field a:I

.field b:Z

.field final synthetic c:Lcom/join/mgps/dialog/q1;


# direct methods
.method public constructor <init>(Lcom/join/mgps/dialog/q1;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/q1$c;->c:Lcom/join/mgps/dialog/q1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Lcom/join/mgps/dialog/q1$c;->a:I

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dialog/q1$c;->b:Z

    return v0
.end method

.method public b(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dialog/q1$c;->b:Z

    return-void
.end method
