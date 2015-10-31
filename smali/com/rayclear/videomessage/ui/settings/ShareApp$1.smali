.class Lcom/rayclear/videomessage/ui/settings/ShareApp$1;
.super Landroid/os/Handler;
.source "ShareApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rayclear/videomessage/ui/settings/ShareApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rayclear/videomessage/ui/settings/ShareApp;


# direct methods
.method constructor <init>(Lcom/rayclear/videomessage/ui/settings/ShareApp;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/rayclear/videomessage/ui/settings/ShareApp$1;->this$0:Lcom/rayclear/videomessage/ui/settings/ShareApp;

    .line 62
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v8, 0x0

    .line 64
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 66
    :try_start_0
    iget-object v6, p0, Lcom/rayclear/videomessage/ui/settings/ShareApp$1;->this$0:Lcom/rayclear/videomessage/ui/settings/ShareApp;

    #getter for: Lcom/rayclear/videomessage/ui/settings/ShareApp;->sendsmsProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v6}, Lcom/rayclear/videomessage/ui/settings/ShareApp;->access$0(Lcom/rayclear/videomessage/ui/settings/ShareApp;)Landroid/app/ProgressDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_0
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 118
    :cond_0
    :goto_1
    return-void

    .line 71
    :pswitch_0
    iget-object v6, p0, Lcom/rayclear/videomessage/ui/settings/ShareApp$1;->this$0:Lcom/rayclear/videomessage/ui/settings/ShareApp;

    const-string v7, "\u6210\u529f\u9080\u8bf7\u597d\u53cb"

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 74
    :pswitch_1
    iget-object v6, p0, Lcom/rayclear/videomessage/ui/settings/ShareApp$1;->this$0:Lcom/rayclear/videomessage/ui/settings/ShareApp;

    const-string v7, "\u77ed\u4fe1\u53d1\u9001\u5931\u8d25"

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 77
    :pswitch_2
    iget-object v6, p0, Lcom/rayclear/videomessage/ui/settings/ShareApp$1;->this$0:Lcom/rayclear/videomessage/ui/settings/ShareApp;

    const-string v7, "\u6ca1\u6709\u5408\u9002\u7684\u624b\u673a\u53f7"

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 80
    :pswitch_3
    iget-object v6, p0, Lcom/rayclear/videomessage/ui/settings/ShareApp$1;->this$0:Lcom/rayclear/videomessage/ui/settings/ShareApp;

    #getter for: Lcom/rayclear/videomessage/ui/settings/ShareApp;->curToShareContact:Lcom/rayclear/videomessage/ui/settings/ShareApp$ToShareContact;
    invoke-static {v6}, Lcom/rayclear/videomessage/ui/settings/ShareApp;->access$1(Lcom/rayclear/videomessage/ui/settings/ShareApp;)Lcom/rayclear/videomessage/ui/settings/ShareApp$ToShareContact;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 81
    iget-object v6, p0, Lcom/rayclear/videomessage/ui/settings/ShareApp$1;->this$0:Lcom/rayclear/videomessage/ui/settings/ShareApp;

    #getter for: Lcom/rayclear/videomessage/ui/settings/ShareApp;->choosedContacts:Ljava/util/Hashtable;
    invoke-static {v6}, Lcom/rayclear/videomessage/ui/settings/ShareApp;->access$2(Lcom/rayclear/videomessage/ui/settings/ShareApp;)Ljava/util/Hashtable;

    move-result-object v6

    iget-object v7, p0, Lcom/rayclear/videomessage/ui/settings/ShareApp$1;->this$0:Lcom/rayclear/videomessage/ui/settings/ShareApp;

    #getter for: Lcom/rayclear/videomessage/ui/settings/ShareApp;->curToShareContact:Lcom/rayclear/videomessage/ui/settings/ShareApp$ToShareContact;
    invoke-static {v7}, Lcom/rayclear/videomessage/ui/settings/ShareApp;->access$1(Lcom/rayclear/videomessage/ui/settings/ShareApp;)Lcom/rayclear/videomessage/ui/settings/ShareApp$ToShareContact;

    move-result-object v7

    iget-object v7, v7, Lcom/rayclear/videomessage/ui/settings/ShareApp$ToShareContact;->phoneString:Ljava/lang/String;

    iget-object v8, p0, Lcom/rayclear/videomessage/ui/settings/ShareApp$1;->this$0:Lcom/rayclear/videomessage/ui/settings/ShareApp;

    #getter for: Lcom/rayclear/videomessage/ui/settings/ShareApp;->curToShareContact:Lcom/rayclear/videomessage/ui/settings/ShareApp$ToShareContact;
    invoke-static {v8}, Lcom/rayclear/videomessage/ui/settings/ShareApp;->access$1(Lcom/rayclear/videomessage/ui/settings/ShareApp;)Lcom/rayclear/videomessage/ui/settings/ShareApp$ToShareContact;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v6, p0, Lcom/rayclear/videomessage/ui/settings/ShareApp$1;->this$0:Lcom/rayclear/videomessage/ui/settings/ShareApp;

    #getter for: Lcom/rayclear/videomessage/ui/settings/ShareApp;->inputcontactEditText:Landroid/widget/EditText;
    invoke-static {v6}, Lcom/rayclear/videomessage/ui/settings/ShareApp;->access$3(Lcom/rayclear/videomessage/ui/settings/ShareApp;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    .line 83
    .local v4, string:Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 85
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/rayclear/videomessage/ui/settings/ShareApp$1;->this$0:Lcom/rayclear/videomessage/ui/settings/ShareApp;

    #getter for: Lcom/rayclear/videomessage/ui/settings/ShareApp;->curToShareContact:Lcom/rayclear/videomessage/ui/settings/ShareApp$ToShareContact;
    invoke-static {v7}, Lcom/rayclear/videomessage/ui/settings/ShareApp;->access$1(Lcom/rayclear/videomessage/ui/settings/ShareApp;)Lcom/rayclear/videomessage/ui/settings/ShareApp$ToShareContact;

    move-result-object v7

    iget-object v7, v7, Lcom/rayclear/videomessage/ui/settings/ShareApp$ToShareContact;->nameString:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "<"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/rayclear/videomessage/ui/settings/ShareApp$1;->this$0:Lcom/rayclear/videomessage/ui/settings/ShareApp;

    #getter for: Lcom/rayclear/videomessage/ui/settings/ShareApp;->curToShareContact:Lcom/rayclear/videomessage/ui/settings/ShareApp$ToShareContact;
    invoke-static {v7}, Lcom/rayclear/videomessage/ui/settings/ShareApp;->access$1(Lcom/rayclear/videomessage/ui/settings/ShareApp;)Lcom/rayclear/videomessage/ui/settings/ShareApp$ToShareContact;

    move-result-object v7

    iget-object v7, v7, Lcom/rayclear/videomessage/ui/settings/ShareApp$ToShareContact;->phoneString:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ">"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 90
    :goto_2
    iget-object v6, p0, Lcom/rayclear/videomessage/ui/settings/ShareApp$1;->this$0:Lcom/rayclear/videomessage/ui/settings/ShareApp;

    #getter for: Lcom/rayclear/videomessage/ui/settings/ShareApp;->inputcontactEditText:Landroid/widget/EditText;
    invoke-static {v6}, Lcom/rayclear/videomessage/ui/settings/ShareApp;->access$3(Lcom/rayclear/videomessage/ui/settings/ShareApp;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v6, p0, Lcom/rayclear/videomessage/ui/settings/ShareApp$1;->this$0:Lcom/rayclear/videomessage/ui/settings/ShareApp;

    #getter for: Lcom/rayclear/videomessage/ui/settings/ShareApp;->msgHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/rayclear/videomessage/ui/settings/ShareApp;->access$4(Lcom/rayclear/videomessage/ui/settings/ShareApp;)Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 88
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/rayclear/videomessage/ui/settings/ShareApp$1;->this$0:Lcom/rayclear/videomessage/ui/settings/ShareApp;

    #getter for: Lcom/rayclear/videomessage/ui/settings/ShareApp;->curToShareContact:Lcom/rayclear/videomessage/ui/settings/ShareApp$ToShareContact;
    invoke-static {v7}, Lcom/rayclear/videomessage/ui/settings/ShareApp;->access$1(Lcom/rayclear/videomessage/ui/settings/ShareApp;)Lcom/rayclear/videomessage/ui/settings/ShareApp$ToShareContact;

    move-result-object v7

    iget-object v7, v7, Lcom/rayclear/videomessage/ui/settings/ShareApp$ToShareContact;->nameString:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "<"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/rayclear/videomessage/ui/settings/ShareApp$1;->this$0:Lcom/rayclear/videomessage/ui/settings/ShareApp;

    #getter for: Lcom/rayclear/videomessage/ui/settings/ShareApp;->curToShareContact:Lcom/rayclear/videomessage/ui/settings/ShareApp$ToShareContact;
    invoke-static {v7}, Lcom/rayclear/videomessage/ui/settings/ShareApp;->access$1(Lcom/rayclear/videomessage/ui/settings/ShareApp;)Lcom/rayclear/videomessage/ui/settings/ShareApp$ToShareContact;

    move-result-object v7

    iget-object v7, v7, Lcom/rayclear/videomessage/ui/settings/ShareApp$ToShareContact;->phoneString:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ">"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 94
    .end local v4           #string:Ljava/lang/String;
    :pswitch_4
    iget-object v6, p0, Lcom/rayclear/videomessage/ui/settings/ShareApp$1;->this$0:Lcom/rayclear/videomessage/ui/settings/ShareApp;

    #getter for: Lcom/rayclear/videomessage/ui/settings/ShareApp;->inputcontactEditText:Landroid/widget/EditText;
    invoke-static {v6}, Lcom/rayclear/videomessage/ui/settings/ShareApp;->access$3(Lcom/rayclear/videomessage/ui/settings/ShareApp;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, mobiles:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 96
    iget-object v6, p0, Lcom/rayclear/videomessage/ui/settings/ShareApp$1;->this$0:Lcom/rayclear/videomessage/ui/settings/ShareApp;

    #calls: Lcom/rayclear/videomessage/ui/settings/ShareApp;->parseContactString(Ljava/lang/String;)Ljava/util/Vector;
    invoke-static {v6, v1}, Lcom/rayclear/videomessage/ui/settings/ShareApp;->access$5(Lcom/rayclear/videomessage/ui/settings/ShareApp;Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v3

    .line 97
    .local v3, realchoosedContacts:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    if-eqz v3, :cond_0

    .line 98
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 99
    .local v5, stringBuffer:Ljava/lang/StringBuffer;
    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_2

    .line 111
    iget-object v6, p0, Lcom/rayclear/videomessage/ui/settings/ShareApp$1;->this$0:Lcom/rayclear/videomessage/ui/settings/ShareApp;

    #getter for: Lcom/rayclear/videomessage/ui/settings/ShareApp;->showChoosedContactTextView:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/rayclear/videomessage/ui/settings/ShareApp;->access$6(Lcom/rayclear/videomessage/ui/settings/ShareApp;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 99
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 101
    .local v2, phoneString:Ljava/lang/String;
    iget-object v7, p0, Lcom/rayclear/videomessage/ui/settings/ShareApp$1;->this$0:Lcom/rayclear/videomessage/ui/settings/ShareApp;

    #getter for: Lcom/rayclear/videomessage/ui/settings/ShareApp;->choosedContacts:Ljava/util/Hashtable;
    invoke-static {v7}, Lcom/rayclear/videomessage/ui/settings/ShareApp;->access$2(Lcom/rayclear/videomessage/ui/settings/ShareApp;)Ljava/util/Hashtable;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rayclear/videomessage/ui/settings/ShareApp$ToShareContact;

    .line 102
    .local v0, contact:Lcom/rayclear/videomessage/ui/settings/ShareApp$ToShareContact;
    if-eqz v0, :cond_3

    .line 104
    iget-object v7, v0, Lcom/rayclear/videomessage/ui/settings/ShareApp$ToShareContact;->nameString:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 109
    :goto_4
    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 107
    :cond_3
    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 67
    .end local v0           #contact:Lcom/rayclear/videomessage/ui/settings/ShareApp$ToShareContact;
    .end local v1           #mobiles:Ljava/lang/String;
    .end local v2           #phoneString:Ljava/lang/String;
    .end local v3           #realchoosedContacts:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v5           #stringBuffer:Ljava/lang/StringBuffer;
    :catch_0
    move-exception v6

    goto/16 :goto_0

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
