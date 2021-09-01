for ckpt in 50 100 200 400 600 
do
for trial in 0 1 2 3 4 
do
    # python rl_algos/StableBaselines.py -w --num_steps=100 --exp_name="vanilla_sac_nodagger_initial$trial" --algo=sac --library=rllib --checkpoint_interval=50 --bulk_log_interval=10 --ignore_warnings --base_log_dir=./logs/
    # python StableBaselines.py -w --num_steps=1000 --exp_name="smirl_sac_nodagger$trial" --algo=sac --library=rllib --checkpoint_interval=50 --smirl_weight=0.1 --bulk_log_interval=10 --ignore_warnings --base_log_dir=../logs/
    # python rl_algos/StableBaselines.py -w --num_steps=500 --exp_name="pretrained_sac_smirl_nodagger_redo$trial" --algo=sac --library=rllib --checkpoint_interval=50 --checkpoint=rl_algos/sac_ckpts/deep-flower-1029700.ckpt --smirl_weight=0.1 --bulk_log_interval=50 --ignore_warnings --base_log_dir=./logs/
    python rl_algos/StableBaselines.py -w --num_steps=100 --exp_name="pretrained_sac_nosmirl_nodagger{$ckpt}_ckpt$trial" --algo=sac --library=rllib --checkpoint_interval=50 --checkpoint=rl_algos/sac_ckpts/dashing-puddle-1030700.ckpt --bulk_log_interval=50 --ignore_warnings --base_log_dir=./logs/
    
    # python rl_algos/StableBaselines.py -w --num_steps=500 --exp_name="vanilla_sac_1000dagger_2stage$trial" --algo=sac --library=rllib --checkpoint_interval=50 --bulk_log_interval=50 --ignore_warnings --base_log_dir=./logs/ --gym_env=planning_dagger --planning_steps=10 --dagger_decay=0.99 --planning_model=ANN --planning_delay=1000
    # python rl_algos/StableBaselines.py -w --num_steps=500 --exp_name="smirl_sac_1000dagger_2stage$trial" --algo=sac --library=rllib --checkpoint_interval=50 --smirl_weight=0.1 --bulk_log_interval=50 --ignore_warnings --base_log_dir=./logs/ --gym_env=planning_dagger --planning_steps=10 --dagger_decay=0.99 --planning_model=ANN --planning_delay=1000
    # python rl_algos/StableBaselines.py -w --num_steps=500 --exp_name="pretrained_sac_smirl_1000dagger_2stage$trial" --algo=sac --library=rllib --checkpoint_interval=50 --checkpoint=rl_algos/sac_ckpts/deep-flower-1029700.ckpt --smirl_weight=0.1 --bulk_log_interval=50 --ignore_warnings --base_log_dir=./logs/ --gym_env=planning_dagger --planning_steps=10 --dagger_decay=0.9 --planning_model=ANN --planning_delay=1000
    # python rl_algos/StableBaselines.py -w --num_steps=500 --exp_name="pretrained_sac_nosmirl_1000dagger_2stage$trial" --algo=sac --library=rllib --checkpoint_interval=50 --checkpoint=rl_algos/sac_ckpts/dashing-puddle-1030700.ckpt --bulk_log_interval=50 --ignore_warnings --base_log_dir=./logs/ --gym_env=planning_dagger --planning_steps=10 --dagger_decay=0.9 --planning_model=ANN --planning_delay=1000
    
    # python rl_algos/StableBaselines.py -w --num_steps=100 --exp_name="pretrained_sac_nosmirl_nodagger_ablation_sin_$1_$trial" --algo=sac --library=rllib --checkpoint_interval=50 --checkpoint="rl_algos/sac_ckpts/${2}200.ckpt" --bulk_log_interval=50 --ignore_warnings --base_log_dir=./logs/
done
done