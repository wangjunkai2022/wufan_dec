.class public Lcom/flipboard/bottomsheet/custom/SimpleSheetView$c;
.super Ljava/lang/Object;
.source "SimpleSheetView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flipboard/bottomsheet/custom/SimpleSheetView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/flipboard/bottomsheet/custom/SimpleSheetView$c;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/flipboard/bottomsheet/custom/SimpleSheetView$c;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/flipboard/bottomsheet/custom/SimpleSheetView$c;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/flipboard/bottomsheet/custom/SimpleSheetView$c;->e:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/flipboard/bottomsheet/custom/SimpleSheetView$c;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/flipboard/bottomsheet/custom/SimpleSheetView$c;->e:Ljava/lang/String;

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/flipboard/bottomsheet/custom/SimpleSheetView$c;->d:Ljava/lang/String;

    return-void
.end method
