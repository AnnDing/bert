export BERT_BASE_DIR=/Users/anan/code/uncased_L-12_H-768_A-12
export GLUE_DIR=/Users/anan/code/bert/glue_data

python run_classifier.py \
  --task_name=sst2 \
  --do_train=true \
  --do_eval=true \
  --data_dir=$GLUE_DIR/SST-2 \
  --vocab_file=$BERT_BASE_DIR/vocab.txt \
  --bert_config_file=$BERT_BASE_DIR/bert_config.json \
  --init_checkpoint=$BERT_BASE_DIR/bert_model.ckpt \
  --max_seq_length=128 \
  --train_batch_size=32 \
  --learning_rate=2e-5 \
  --num_train_epochs=3.0 \
  --output_dir=/Users/anan/code/bert/output/SST/
