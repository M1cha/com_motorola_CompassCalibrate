.class Lcom/motorola/CompassCalibrate/CompassCalibrate$4;
.super Ljava/util/TimerTask;
.source "CompassCalibrate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/CompassCalibrate/CompassCalibrate;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/CompassCalibrate/CompassCalibrate;


# direct methods
.method constructor <init>(Lcom/motorola/CompassCalibrate/CompassCalibrate;)V
    .locals 0
    .parameter

    .prologue
    .line 349
    iput-object p1, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate$4;->this$0:Lcom/motorola/CompassCalibrate/CompassCalibrate;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 350
    iget-object v0, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate$4;->this$0:Lcom/motorola/CompassCalibrate/CompassCalibrate;

    const/4 v1, 0x1

    #setter for: Lcom/motorola/CompassCalibrate/CompassCalibrate;->go:Z
    invoke-static {v0, v1}, Lcom/motorola/CompassCalibrate/CompassCalibrate;->access$302(Lcom/motorola/CompassCalibrate/CompassCalibrate;Z)Z

    .line 351
    return-void
.end method
