python neucf.py --log_path "./log/normal/" --epoch_iter 258 --valid_iter 10 --batch_size 4096 --external_embedding True --loss_type cross_entropy --decay_step 100000 --layers [256,1024,512,256,128] --reg_layers [0.0001,0.0001,0.0001,0.0001,0.0001]
python neucf.py --log_path "./log/normal_decay1500/" --epoch_iter 258 --valid_iter 10 --batch_size 4096 --external_embedding True --loss_type cross_entropy --decay_step 1500 --layers [256,1024,512,256,128] --reg_layers [0.0001,0.0001,0.0001,0.0001,0.0001]
python neucf.py --log_path "./log/normal_decay2500/" --epoch_iter 258 --valid_iter 10 --batch_size 4096 --external_embedding True --loss_type cross_entropy --decay_step 2500 --layers [256,1024,512,256,128] --reg_layers [0.0001,0.0001,0.0001,0.0001,0.0001]
python neucf.py --log_path "./log/normal_decay3500/" --epoch_iter 258 --valid_iter 10 --batch_size 4096 --external_embedding True --loss_type cross_entropy --decay_step 3500 --layers [256,1024,512,256,128] --reg_layers [0.0001,0.0001,0.0001,0.0001,0.0001]
python ngcf.py --log_path "./log/ngcf_embedding/" --epoch 400 --embed_size 64 --layer_size [64,64,64] --regs [1e-5] --lr 0.0001 --loss_type cross_entropy --node_dropout [0.1] --node_dropout_flag 1 --mess_dropout [0.1,0.1,0.1] --save_flag 1
python ngcf.py --log_path "./log/ngcf_endtoend0/" --epoch 400 --embed_size 64 --layer_size [64,64,64] --regs [1e-5] --lr 0.0001 --loss_type cross_entropy --node_dropout [0.1] --node_dropout_flag 1 --mess_dropout [0.1,0.1,0.1] --save_flag 1 --dense_layer_type 0 --dense_layer_size [256,1024,512,256,128] --dense_layer_regs [0.00001,0.00001,0.00001,0.00001,0.00001] --end_to_end True 
python ngcf.py --log_path "./log/ngcf_endtoend1/" --epoch 400 --embed_size 64 --layer_size [64,64,64] --regs [1e-5] --lr 0.0001 --loss_type cross_entropy --node_dropout [0.1] --node_dropout_flag 1 --mess_dropout [0.1,0.1,0.1] --save_flag 1 --dense_layer_type 1 --dense_layer_size [256,1024,512,256,128] --dense_layer_regs [0.00001,0.00001,0.00001,0.00001,0.00001] --end_to_end True

python neucf.py --log_path "./log/normal_ngcfemb/" --epoch_iter 258 --valid_iter 10 --batch_size 4096 --external_embedding True --external_embedding_type 1 --graph_embedding_row_path "./log/ngcf_embedding/row_embedding.npy" --graph_embedding_col_path "./log/ngcf_embedding/col_embedding.npy" --loss_type cross_entropy --decay_step 100000 --layers [256,1024,512,256,128] --reg_layers [0.0001,0.0001,0.0001,0.0001,0.0001]
python neucf.py --log_path "./log/normal_ngcfemb_decay1500/" --epoch_iter 258 --valid_iter 10 --batch_size 4096 --external_embedding True --external_embedding_type 1 --graph_embedding_row_path "./log/ngcf_embedding/row_embedding.npy" --graph_embedding_col_path "./log/ngcf_embedding/col_embedding.npy" --loss_type cross_entropy --decay_step 1500 --layers [256,1024,512,256,128] --reg_layers [0.0001,0.0001,0.0001,0.0001,0.0001]
python neucf.py --log_path "./log/normal_ngcfemb_decay2500/" --epoch_iter 258 --valid_iter 10 --batch_size 4096 --external_embedding True --external_embedding_type 1 --graph_embedding_row_path "./log/ngcf_embedding/row_embedding.npy" --graph_embedding_col_path "./log/ngcf_embedding/col_embedding.npy" --loss_type cross_entropy --decay_step 2500 --layers [256,1024,512,256,128] --reg_layers [0.0001,0.0001,0.0001,0.0001,0.0001]
python neucf.py --log_path "./log/normal_ngcfemb_decay3500/" --epoch_iter 258 --valid_iter 10 --batch_size 4096 --external_embedding True --external_embedding_type 1 --graph_embedding_row_path "./log/ngcf_embedding/row_embedding.npy" --graph_embedding_col_path "./log/ngcf_embedding/col_embedding.npy" --loss_type cross_entropy --decay_step 3500 --layers [256,1024,512,256,128] --reg_layers [0.0001,0.0001,0.0001,0.0001,0.0001]
python neucf.py --log_path "./log/basenn_8/" --model "NeuCF" --epoch_iter 258 --valid_iter 10 --batch_size 4096 --loss_type mse --num_factors 8 --decay_step 2500 --layers [64,32,16,8] --reg_mf 0.0001 --reg_layers [0.0001,0.0001,0.0001,0.0001]
python neucf.py --log_path "./log/basenn_16/" --model "NeuCF" --epoch_iter 258 --valid_iter 10 --batch_size 4096 --loss_type mse --num_factors 16 --decay_step 2500 --layers [128,64,32,16] --reg_mf 0.0001 --reg_layers [0.0001,0.0001,0.0001,0.0001]