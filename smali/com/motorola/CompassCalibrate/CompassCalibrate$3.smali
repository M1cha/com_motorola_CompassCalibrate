.class Lcom/motorola/CompassCalibrate/CompassCalibrate$3;
.super Ljava/lang/Object;
.source "CompassCalibrate.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/CompassCalibrate/CompassCalibrate;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 212
    iput-object p1, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate$3;->this$0:Lcom/motorola/CompassCalibrate/CompassCalibrate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 213
    iget-object v0, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate$3;->this$0:Lcom/motorola/CompassCalibrate/CompassCalibrate;

    const/4 v1, 0x0

    #setter for: Lcom/motorola/CompassCalibrate/CompassCalibrate;->comp_dialog_shown:Z
    invoke-static {v0, v1}, Lcom/motorola/CompassCalibrate/CompassCalibrate;->access$602(Lcom/motorola/CompassCalibrate/CompassCalibrate;Z)Z

    .line 214
    iget-object v0, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate$3;->this$0:Lcom/motorola/CompassCalibrate/CompassCalibrate;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/motorola/CompassCalibrate/CompassCalibrate;->dismissDialog(I)V

    .line 215
    iget-object v0, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate$3;->this$0:Lcom/motorola/CompassCalibrate/CompassCalibrate;

    #getter for: Lcom/motorola/CompassCalibrate/CompassCalibrate;->mView:Lcom/motorola/CompassCalibrate/CompassCalibrate$SampleView;
    invoke-static {v0}, Lcom/motorola/CompassCalibrate/CompassCalibrate;->access$100(Lcom/motorola/CompassCalibrate/CompassCalibrate;)Lcom/motorola/CompassCalibrate/CompassCalibrate$SampleView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/CompassCalibrate/CompassCalibrate$SampleView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate$3;->this$0:Lcom/motorola/CompassCalibrate/CompassCalibrate;

    #getter for: Lcom/motorola/CompassCalibrate/CompassCalibrate;->path:Ljava/lang/String;
    invoke-static {v1}, Lcom/motorola/CompassCalibrate/CompassCalibrate;->access$700(Lcom/motorola/CompassCalibrate/CompassCalibrate;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 216
    iget-object v0, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate$3;->this$0:Lcom/motorola/CompassCalibrate/CompassCalibrate;

    invoke-virtual {v0}, Lcom/motorola/CompassCalibrate/CompassCalibrate;->finish()V

    .line 217
    return-void
.end method
