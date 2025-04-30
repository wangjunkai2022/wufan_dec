.class public Lit/sephiroth/android/library/widget/ExpandableHListConnector$a;
.super Landroid/database/DataSetObserver;
.source "ExpandableHListConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lit/sephiroth/android/library/widget/ExpandableHListConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lit/sephiroth/android/library/widget/ExpandableHListConnector;


# direct methods
.method protected constructor <init>(Lit/sephiroth/android/library/widget/ExpandableHListConnector;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector$a;->a:Lit/sephiroth/android/library/widget/ExpandableHListConnector;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector$a;->a:Lit/sephiroth/android/library/widget/ExpandableHListConnector;

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->a(Lit/sephiroth/android/library/widget/ExpandableHListConnector;ZZ)V

    .line 2
    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector$a;->a:Lit/sephiroth/android/library/widget/ExpandableHListConnector;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onInvalidated()V
    .locals 2

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector$a;->a:Lit/sephiroth/android/library/widget/ExpandableHListConnector;

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->a(Lit/sephiroth/android/library/widget/ExpandableHListConnector;ZZ)V

    .line 2
    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListConnector$a;->a:Lit/sephiroth/android/library/widget/ExpandableHListConnector;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    return-void
.end method
