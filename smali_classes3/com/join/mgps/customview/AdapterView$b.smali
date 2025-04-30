.class public Lcom/join/mgps/customview/AdapterView$b;
.super Ljava/lang/Object;
.source "AdapterView.java"

# interfaces
.implements Landroid/view/ContextMenu$ContextMenuInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/AdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Landroid/view/View;

.field public b:I

.field public c:J


# direct methods
.method public constructor <init>(Landroid/view/View;IJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/customview/AdapterView$b;->a:Landroid/view/View;

    .line 3
    iput p2, p0, Lcom/join/mgps/customview/AdapterView$b;->b:I

    .line 4
    iput-wide p3, p0, Lcom/join/mgps/customview/AdapterView$b;->c:J

    return-void
.end method
