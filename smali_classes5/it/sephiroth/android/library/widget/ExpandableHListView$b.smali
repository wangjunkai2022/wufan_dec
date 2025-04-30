.class public Lit/sephiroth/android/library/widget/ExpandableHListView$b;
.super Ljava/lang/Object;
.source "ExpandableHListView.java"

# interfaces
.implements Landroid/view/ContextMenu$ContextMenuInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lit/sephiroth/android/library/widget/ExpandableHListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Landroid/view/View;

.field public b:J

.field public c:J


# direct methods
.method public constructor <init>(Landroid/view/View;JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lit/sephiroth/android/library/widget/ExpandableHListView$b;->a:Landroid/view/View;

    .line 3
    iput-wide p2, p0, Lit/sephiroth/android/library/widget/ExpandableHListView$b;->b:J

    .line 4
    iput-wide p4, p0, Lit/sephiroth/android/library/widget/ExpandableHListView$b;->c:J

    return-void
.end method
