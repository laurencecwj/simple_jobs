use clap::Parser;

#[derive(Parser, Debug)]
pub struct Args {
    #[arg(long, value_enum, value_name = "ID", help = "job id",)]
    id: usize,

    #[arg(long, value_enum, value_name = "OUTDIR", help = "write output to directory",)]
    outdir: String,
}

const DATA:&[u8] = include_bytes!("data.txt");

fn main() -> anyhow::Result<()>{
    let args: Args = Args::parse();
    let myid = args.id;

    let lines = String::from_utf8(DATA.to_vec())?;
    // println!("debug data: {:?}", lines);
    let data = lines.split("\n").collect::<Vec<_>>();
    if myid > data.len() {
        println!("illegal job id ==> {}", myid);
        return Ok(())
    }
    println!("{}", data[myid]);

    let workdir = std::env::current_dir()?;
    println!("current working directory: {}", workdir.to_str().unwrap());
    let p = std::path::Path::new(&args.outdir).join("output.txt");
    std::fs::write(p, data[myid])?;

    Ok(())
}
