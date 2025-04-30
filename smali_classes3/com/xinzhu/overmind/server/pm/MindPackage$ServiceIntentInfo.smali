.class public Lcom/xinzhu/overmind/server/pm/MindPackage$ServiceIntentInfo;
.super Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;
.source "MindPackage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xinzhu/overmind/server/pm/MindPackage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServiceIntentInfo"
.end annotation


# instance fields
.field public h:Lcom/xinzhu/overmind/server/pm/MindPackage$h;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageParser$IntentInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intentInfo"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;-><init>(Landroid/content/pm/PackageParser$IntentInfo;)V

    return-void
.end method

.method public constructor <init>(Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intentInfo"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;-><init>(Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;)V

    return-void
.end method
