.class Lcom/papa/controller/core/ControllerManager$ControllerManagerException;
.super Ljava/lang/Exception;
.source "ControllerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa/controller/core/ControllerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ControllerManagerException"
.end annotation


# instance fields
.field final synthetic a:Lcom/papa/controller/core/ControllerManager;


# direct methods
.method public constructor <init>(Lcom/papa/controller/core/ControllerManager;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/controller/core/ControllerManager$ControllerManagerException;->a:Lcom/papa/controller/core/ControllerManager;

    .line 2
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method
