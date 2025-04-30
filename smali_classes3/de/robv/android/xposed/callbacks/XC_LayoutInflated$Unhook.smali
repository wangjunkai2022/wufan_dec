.class public Lde/robv/android/xposed/callbacks/XC_LayoutInflated$Unhook;
.super Ljava/lang/Object;
.source "XC_LayoutInflated.java"

# interfaces
.implements Lde/robv/android/xposed/callbacks/IXUnhook;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/robv/android/xposed/callbacks/XC_LayoutInflated;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Unhook"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lde/robv/android/xposed/callbacks/IXUnhook<",
        "Lde/robv/android/xposed/callbacks/XC_LayoutInflated;",
        ">;"
    }
.end annotation


# instance fields
.field private final id:I

.field private final resDir:Ljava/lang/String;

.field final synthetic this$0:Lde/robv/android/xposed/callbacks/XC_LayoutInflated;


# direct methods
.method public constructor <init>(Lde/robv/android/xposed/callbacks/XC_LayoutInflated;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "resDir",
            "id"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lde/robv/android/xposed/callbacks/XC_LayoutInflated$Unhook;->this$0:Lde/robv/android/xposed/callbacks/XC_LayoutInflated;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lde/robv/android/xposed/callbacks/XC_LayoutInflated$Unhook;->resDir:Ljava/lang/String;

    .line 3
    iput p3, p0, Lde/robv/android/xposed/callbacks/XC_LayoutInflated$Unhook;->id:I

    return-void
.end method


# virtual methods
.method public getCallback()Lde/robv/android/xposed/callbacks/XC_LayoutInflated;
    .locals 1

    .line 2
    iget-object v0, p0, Lde/robv/android/xposed/callbacks/XC_LayoutInflated$Unhook;->this$0:Lde/robv/android/xposed/callbacks/XC_LayoutInflated;

    return-object v0
.end method

.method public bridge synthetic getCallback()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lde/robv/android/xposed/callbacks/XC_LayoutInflated$Unhook;->getCallback()Lde/robv/android/xposed/callbacks/XC_LayoutInflated;

    move-result-object v0

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lde/robv/android/xposed/callbacks/XC_LayoutInflated$Unhook;->id:I

    return v0
.end method

.method public unhook()V
    .locals 0

    return-void
.end method
